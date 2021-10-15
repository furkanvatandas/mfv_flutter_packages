import 'package:example/rick_and_morty_api/rick_and_morty_base_request.dart';
import 'package:network_manager/http_request_protocol.dart';

class CharacterRequest extends RickAndMortyBaseRequest {
  @override
  String get path => '/api/character';

  @override
  HttpMethods get httpMethod => HttpMethods.get;
}
