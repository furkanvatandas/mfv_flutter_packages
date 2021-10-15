import 'dart:async';

enum HttpMethods { get, post, put, delete }

abstract class HttpRequestProtocol {
  bool get isHttps;

  String get path;
  String get baseUrl;

  HttpMethods get httpMethod;

  Map<String, String>? get headers;
  Map<String, String>? get bodyParameters;
  Map<String, String>? get queryParameters;

  Future<void> beforeRequest();
}
