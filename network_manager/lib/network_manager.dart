library network_manager;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:network_manager/extensions.dart';
import 'package:network_manager/http_request_protocol.dart';
import 'package:network_manager/models/base_response.dart';
import 'package:network_manager/network_result.dart';

class PreviousProtocolModel<P extends INetworkResponse> {
  final P parseModel;
  final HttpRequestProtocol httpRequestProtocol;

  PreviousProtocolModel({required this.parseModel, required this.httpRequestProtocol});
}

class NetworkManager<F extends INetworkResponse> {
  final Logger _log = Logger('NetworkManager');

  final bool showResponseDetail;

  final F failureModel;

  final List<PreviousProtocolModel> previousProtocols;

  NetworkManager({
    required this.failureModel,
    this.showResponseDetail = false,
    this.previousProtocols = const [],
  });

  Future<NetworkResult<S, F, String>> run<S, P extends INetworkResponse>({
    required P parseModel,
    required HttpRequestProtocol protocol,
  }) async {
    HttpRequestProtocol? currentProtocol;
    try {
      for (PreviousProtocolModel item in previousProtocols) {
        currentProtocol = item.httpRequestProtocol;
        http.Response _response = await request(currentProtocol);
        response(_response, item.parseModel);
      }
      currentProtocol = protocol;
      http.Response _response = await request(currentProtocol);
      return response(_response, parseModel);
    } catch (e) {
      _log.shout('${currentProtocol.runtimeType}() => $e');
      if (e is Exception) return NetworkResult.exception(e.clientMessage());
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    }
  }

  Future<http.Response> request<Success>(HttpRequestProtocol httpReq) async {
    var _header = httpReq.headers?..removeWhere((key, value) => value.isEmpty);
    var _body = httpReq.bodyParameters?..removeWhere((key, value) => value.isEmpty);
    var _query = httpReq.queryParameters?..removeWhere((key, value) => value.isEmpty);

    Uri _uri = httpReq.isHttps ? Uri.https(httpReq.baseUrl, httpReq.path, _query) : Uri.http(httpReq.baseUrl, httpReq.path, _query);
    _log.info('${httpReq.httpMethod.methodName} $_uri Headers: $_header');

    switch (httpReq.httpMethod) {
      case HttpMethods.get:
        return (await http.get(_uri, headers: _header));
      case HttpMethods.post:
        return (await http.post(_uri, headers: _header, body: jsonEncode(_body)));
      case HttpMethods.put:
        return (await http.put(_uri, body: jsonEncode(_body), headers: _header));
      case HttpMethods.delete:
        return (await http.delete(_uri, headers: _header));
    }
  }

  NetworkResult<S, F, String> response<S, P extends INetworkResponse>(
    http.Response response,
    P parseModel,
  ) {
    var responseJson = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      if (showResponseDetail) {
        _log.fine('Response: $responseJson');
      } else {
        _log.fine('${response.request}');
      }

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

  void checkResponse<Success>(http.Response response) {
    var responseJson = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      showResponseDetail ? _log.fine('Response: $responseJson') : _log.fine('${response.request}');
    } else {
      _log.warning('Response: $responseJson');
    }
  }
}
