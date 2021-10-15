import 'package:example/disney_api/disney_base_request.dart';
import 'package:network_manager/http_request_protocol.dart';

class DisneyCharacterRequest extends DisneyBaseRequest {
  @override
  String get path => '/characters';

  @override
  HttpMethods get httpMethod => HttpMethods.get;
}
