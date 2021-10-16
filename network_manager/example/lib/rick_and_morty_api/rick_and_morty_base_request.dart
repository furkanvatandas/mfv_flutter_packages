import 'package:network_manager/http_request_protocol.dart';

abstract class RickAndMortyBaseRequest extends HttpRequestProtocol {
  @override
  String get baseUrl => 'rickandmortyapi.com';

  @override
  bool get isHttps => true;

  @override
  Map<String, String>? get headers => null;

  @override
  Map<String, String>? get bodyParameters => null;

  @override
  Map<String, String>? get queryParameters => null;
}
