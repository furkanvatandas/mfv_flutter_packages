import 'package:example/disney_service/base/disney_base_request.dart';
import 'package:network_manager/network_request.dart';

class DisneyCharacterRequest extends DisneyBaseRequest {
  @override
  String get path => '/characters';

  @override
  HttpMethods get httpMethod => HttpMethods.get;
}
