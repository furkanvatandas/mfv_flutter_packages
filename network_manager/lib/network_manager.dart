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
  final Logger _log = Logger('NetworkManager');

  final Parser parseModel;
  final Failure failureModel;
  final HttpRequestProtocol req;

  NetworkManager({
    required this.req,
    required this.parseModel,
    required this.failureModel,
  });

  Future<NetworkResult<Success, Failure, String>> request<Success>() async {
    var _header = req.headers..removeWhere((key, value) => value.isEmpty);
    var _body = req.bodyParameters..removeWhere((key, value) => value.isEmpty);
    var _query = req.queryParameters..removeWhere((key, value) => value.isEmpty);

    Uri _uri = req.isHttps ? Uri.https(req.baseUrl, req.path, _query) : Uri.http(req.baseUrl, req.path, _query);
    _log.info('${req.httpMethod} $_uri Headers: $_header');

    try {
      switch (req.httpMethod) {
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
        '${req.runtimeType}()\n'
        'SocketException: ${e.message}\n'
        'Port: ${e.port}\n'
        'OSError: ${e.osError}\n'
        'Address: ${e.address}',
      );
      return const NetworkResult.exception('İnternet bağlantınızı kontrol edebilir misiniz?');
    } on TimeoutException catch (e) {
      _log.shout(
        '${req.runtimeType}()\n'
        'TimeoutException: ${e.message}\n'
        'Duration: ${e.duration}',
      );
      return const NetworkResult.exception('İstek zaman aşımına uğradı işleminizi lütfen tekrar deneyiniz.');
    } on HttpException catch (e) {
      _log.shout(
        '${req.runtimeType}()\n'
        'HttpException: ${e.message}\n'
        'Uri: ${e.uri}',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } on FormatException catch (e) {
      _log.shout(
        '${req.runtimeType}()\n'
        'FormatException: ${e.message}\n'
        'Source: ${e.source}\n'
        'Offset: ${e.offset}',
      );
      return const NetworkResult.exception('İşleminizi gerçekleştirirken bir hata oluştu.');
    } on HandshakeException catch (e) {
      _log.shout(
        '${req.runtimeType}()\n'
        'HandshakeException: ${e.message}\n'
        'OSError: ${e.osError}\n'
        'Type: ${e.type}',
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

  NetworkResult<Success, Failure, String> _response<Success>(http.Response response) {
    var responseJson = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      _log.fine('Response: $responseJson');
      if (responseJson is List) {
        return NetworkResult.success(responseJson.map((e) => parseModel.fromJson(e)).toList().cast<Parser>() as Success);
      } else if (responseJson is Map<String, dynamic>) {
        return NetworkResult.success(parseModel.fromJson(responseJson) as Success);
      } else {
        return NetworkResult.success(responseJson as Success);
      }
    } else {
      _log.warning('Response: $responseJson');
      return NetworkResult.failure(failureModel.fromJson(responseJson));
    }
  }
}
