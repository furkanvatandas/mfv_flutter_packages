library network_manager;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:network_manager/extensions.dart';
import 'package:network_manager/network_request.dart';
import 'package:network_manager/models/network_model.dart';
import 'package:network_manager/network_result.dart';

class NetworkManager<F extends INetworkModel> {
  final Logger _log = Logger('NetworkManager');

  final bool showResponseDetail;

  final F failureModel;

  NetworkManager({
    required this.failureModel,
    this.showResponseDetail = false,
  });

  Future<NetworkResult<S, F, String>> request<S, P extends INetworkModel>({required INetworkRequest req, required P parseModel}) async {
    var _header = req.headers?..removeWhere((key, value) => value.isEmpty);
    var _body = req.bodyParameters?..removeWhere((key, value) => value.isEmpty);
    var _query = req.queryParameters?..removeWhere((key, value) => value.isEmpty);

    Uri _uri = req.isHttps ? Uri.https(req.baseUrl, req.path, _query) : Uri.http(req.baseUrl, req.path, _query);
    _log.info('${req.httpMethod.methodName} $_uri Headers: $_header');

    try {
      switch (req.httpMethod) {
        case HttpMethods.get:
          return response(await http.get(_uri, headers: _header), parseModel);
        case HttpMethods.post:
          return response(await http.post(_uri, headers: _header, body: jsonEncode(_body)), parseModel);
        case HttpMethods.put:
          return response(await http.put(_uri, body: jsonEncode(_body), headers: _header), parseModel);
        case HttpMethods.delete:
          return response(await http.delete(_uri, headers: _header), parseModel);
      }
    } on Exception catch (e) {
      _log.shout('${req.runtimeType}() => $e');
      return NetworkResult.exception(e.clientMessage());
    } catch (e) {
      _log.shout('${req.runtimeType}() => $e');
      return NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    }
  }

  NetworkResult<S, F, String> response<S, P extends INetworkModel>(http.Response response, P parseModel) {
    var responseJson = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      showResponseDetail ? _log.fine('Response: $responseJson') : _log.fine('${response.request}');

      if (responseJson is List) {
        return NetworkResult.success(
          List<P>.from(responseJson.map((e) => parseModel.fromJson(e)).toList()) as S,
        );
      } else if (responseJson is Map<String, dynamic>) {
        return NetworkResult.success(parseModel.fromJson(responseJson) as S);
      } else {
        return NetworkResult.success(responseJson as S);
      }
    } else {
      _log.warning('Response: $responseJson');
      return NetworkResult.failure(failureModel.fromJson(responseJson));
    }
  }
}
