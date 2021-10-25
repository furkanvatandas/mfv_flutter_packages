import 'package:example/rick_and_morty_service/base/rick_and_morty_base_request.dart';
import 'package:network_manager/network_request.dart';

class CharacterRequest extends RickAndMortyBaseRequest {
  @override
  String get path => '/api/character';

  @override
  HttpMethods get httpMethod => HttpMethods.get;
}
