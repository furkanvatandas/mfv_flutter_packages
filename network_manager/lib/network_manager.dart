library network_manager;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:network_manager/extensions.dart';
import 'package:network_manager/http_request_protocol.dart';
import 'package:network_manager/models/base_response.dart';
import 'package:network_manager/network_result.dart';

class NetworkManager<S, P extends INetworkResponse, F extends INetworkResponse> {
  final Logger _log = Logger('NetworkManager');

  final S successModel;
  final P parseModel;
  final F failureModel;

  final HttpRequestProtocol httpReq;
  final bool showResponseDetail;

  NetworkManager(
    this.httpReq, {
    required this.successModel,
    required this.parseModel,
    required this.failureModel,
    this.showResponseDetail = false,
  });

  Future<NetworkResult<S, F, String>> request() async {
    var _header = httpReq.headers?..removeWhere((key, value) => value.isEmpty);
    var _body = httpReq.bodyParameters?..removeWhere((key, value) => value.isEmpty);
    var _query = httpReq.queryParameters?..removeWhere((key, value) => value.isEmpty);

    Uri _uri = httpReq.isHttps ? Uri.https(httpReq.baseUrl, httpReq.path, _query) : Uri.http(httpReq.baseUrl, httpReq.path, _query);
    _log.info('${httpReq.httpMethod.methodName} $_uri Headers: $_header');

    try {
      switch (httpReq.httpMethod) {
        case HttpMethods.get:
          return response(await http.get(_uri, headers: _header));
        case HttpMethods.post:
          return response(await http.post(_uri, headers: _header, body: jsonEncode(_body)));
        case HttpMethods.put:
          return response(await http.put(_uri, body: jsonEncode(_body), headers: _header));
        case HttpMethods.delete:
          return response(await http.delete(_uri, headers: _header));
      }
    } catch (e) {
      _log.shout('${httpReq.runtimeType}() => $e');
      if (e is Exception) return NetworkResult.exception(e.clientMessage());
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    }
  }

  NetworkResult<S, F, String> response(http.Response response) {
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
