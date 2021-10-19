import 'package:network_manager/network_request.dart';

abstract class RickAndMortyBaseRequest extends INetworkRequest {
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
