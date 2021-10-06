library network_manager;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:network_manager/http_request_protocol.dart';
import 'package:network_manager/models/base_response.dart';
import 'package:network_manager/network_result.dart';

class NetworkManager<Parser extends BaseResponse, Failure extends BaseResponse> {
  final Parser _parseModel;
  final Failure _failureModel;
  final HttpRequestProtocol _req;

  final Logger _log = Logger('NetworkManager');

  NetworkManager(
    this._req,
    this._parseModel,
    this._failureModel,
  );

  //NetworkManager._privateConstructor();
  //static final NetworkManager instance = NetworkManager._privateConstructor();

  Future<NetworkResult<Success, Failure, String>> request<Success>() async {
    var _header = _req.headers..removeWhere((key, value) => value.isEmpty);
    var _body = _req.bodyParameters..removeWhere((key, value) => value.isEmpty);
    var _query = _req.queryParameters..removeWhere((key, value) => value.isEmpty);

    Uri _uri = _req.isHttps ? Uri.https(_req.baseUrl, _req.path, _query) : Uri.http(_req.baseUrl, _req.path, _query);
    _log.info('${_req.httpMethod} $_uri Headers: $_header');

    try {
      switch (_req.httpMethod) {
        case HttpMethods.get:
          http.Response response = await http.get(_uri, headers: _header);
          return _response(response);
        case HttpMethods.post:
          final response = await http.post(_uri, headers: _header, body: jsonEncode(_body));
          return _response(response);
        case HttpMethods.put:
          final response = await http.put(_uri, body: jsonEncode(_body), headers: _header);
          return _response(response);
        case HttpMethods.delete:
          final response = await http.delete(_uri, headers: _header);
          return _response(response);

        default:
          return const NetworkResult.exception('Http request exception');
      }
    } on SocketException catch (e) {
      _log.shout(
        'SocketException: ${e.message}\n'
        'Port: ${e.port}\n'
        'OSError: ${e.osError}\n'
        'Address: ${e.address}\n'
        'Request: ${_req.runtimeType}()',
      );
      return const NetworkResult.exception('İnternet bağlantınızı kontrol edebilir misiniz?');
    } on TimeoutException catch (e) {
      _log.shout(
        'TimeoutException: ${e.message}\n'
        'Duration: ${e.duration}\n'
        'Request: ${_req.runtimeType}()',
      );
      return const NetworkResult.exception('İstek zaman aşımına uğradı işleminizi lütfen tekrar deneyiniz.');
    } on HttpException catch (e) {
      _log.shout(
        'HttpException: ${e.message}\n'
        'Uri: ${e.uri}\n'
        'Request: ${_req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } on FormatException catch (e) {
      _log.shout(
        'FormatException: ${e.message}\n'
        'Source: ${e.source}\n'
        'Offset: ${e.offset}\n'
        'Request: ${_req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } on HandshakeException catch (e) {
      _log.shout(
        'HandshakeException: ${e.message}\n'
        'OSError: ${e.osError}\n'
        'Type: ${e.type}\n'
        'Request: ${_req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } catch (e) {
      _log.shout(
        '$e\n'
        'Request: ${_req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    }
  }

  NetworkResult<Success, Failure, String> _response<Success>(http.Response response) {
    var responseJson = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      _log.fine('Response: $responseJson');
      if (responseJson is List) {
        return NetworkResult.success(responseJson.map((e) => _parseModel.fromJson(e)).toList().cast<Parser>() as Success);
      } else if (responseJson is Map<String, dynamic>) {
        return NetworkResult.success(_parseModel.fromJson(responseJson) as Success);
      } else {
        return NetworkResult.success(responseJson as Success);
      }
    } else {
      _log.warning('Response: $responseJson');
      return NetworkResult.failure(_failureModel.fromJson(responseJson));
    }
  }
}
