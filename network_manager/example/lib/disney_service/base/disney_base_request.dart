import 'package:network_manager/network_request.dart';

abstract class DisneyBaseRequest extends INetworkRequest {
  @override
  String get baseUrl => 'api.disneyapi.dev';

  @override
  Map<String, String>? get bodyParameters => null;

  @override
  Map<String, String>? get headers => null;

  @override
  bool get isHttps => true;

  @override
  Map<String, String>? get queryParameters => null;
}
