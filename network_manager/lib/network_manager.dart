library network_manager;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:network_manager/http_request_protocol.dart';
import 'package:network_manager/models/base_response.dart';
import 'package:network_manager/network_result.dart';

class NetworkManager {
  final Logger _log = Logger('NetworkManager');

  NetworkManager._privateConstructor();
  static final NetworkManager instance = NetworkManager._privateConstructor();

  Future<NetworkResult<S, E, String>> request<S extends BaseResponse, E extends BaseResponse>({
    required HttpRequestProtocol req,
    required S successModel,
    required E errorModel,
  }) async {
    var _header = req.headers..removeWhere((key, value) => value.isEmpty);
    var _body = req.bodyParameters..removeWhere((key, value) => value.isEmpty);
    var _query = req.queryParameters..removeWhere((key, value) => value.isEmpty);

    Uri uri = req.isHttps ? Uri.https(req.baseUrl, req.path, _query) : Uri.http(req.baseUrl, req.path, _query);
    _log.info('${req.httpMethod} $uri Headers: $_header');

    try {
      switch (req.httpMethod) {
        case HttpMethods.get:
          http.Response response = await http.get(uri, headers: _header);
          return _response(response, successModel, errorModel);

        case HttpMethods.post:
          final response = await http.post(uri, headers: _header, body: jsonEncode(_body));
          return _response(response, successModel, errorModel);

        case HttpMethods.put:
          final response = await http.put(uri, body: jsonEncode(_body), headers: _header);
          return _response(response, successModel, errorModel);

        case HttpMethods.delete:
          final response = await http.delete(uri, headers: _header);
          return _response(response, successModel, errorModel);

        default:
          return const NetworkResult.exception('Http request exception');
      }
    } on SocketException catch (e) {
      _log.shout(
        'SocketException: ${e.message}\n'
        'Port: ${e.port}\n'
        'OSError: ${e.osError}\n'
        'Address: ${e.address}\n'
        'Request: ${req.runtimeType}()',
      );
      return const NetworkResult.exception('İnternet bağlantınızı kontrol edebilir misiniz?');
    } on TimeoutException catch (e) {
      _log.shout(
        'TimeoutException: ${e.message}\n'
        'Duration: ${e.duration}\n'
        'Request: ${req.runtimeType}()',
      );
      return const NetworkResult.exception('İstek zaman aşımına uğradı işleminizi lütfen tekrar deneyiniz.');
    } on HttpException catch (e) {
      _log.shout(
        'HttpException: ${e.message}\n'
        'Uri: ${e.uri}\n'
        'Request: ${req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } on FormatException catch (e) {
      _log.shout(
        'FormatException: ${e.message}\n'
        'Source: ${e.source}\n'
        'Offset: ${e.offset}\n'
        'Request: ${req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } on HandshakeException catch (e) {
      _log.shout(
        'HandshakeException: ${e.message}\n'
        'OSError: ${e.osError}\n'
        'Type: ${e.type}\n'
        'Request: ${req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } catch (e) {
      _log.shout(
        '$e\n'
        'Request: ${req.runtimeType}()',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    }
  }

  NetworkResult<S, E, String> _response<S extends BaseResponse, E extends BaseResponse>(
    http.Response response,
    S successModel,
    E errorModel,
  ) {
    var responseJson = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      _log.fine('Response: $responseJson');
      return NetworkResult.success(successModel.fromJson(responseJson));
    } else {
      _log.warning('Response: $responseJson');
      return NetworkResult.failure(errorModel.fromJson(responseJson));
    }
  }
}
