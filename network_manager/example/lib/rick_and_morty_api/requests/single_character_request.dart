import 'package:example/rick_and_morty_api/rick_and_morty_base_request.dart';
import 'package:network_manager/http_request_protocol.dart';

class SingleCharacterRequest extends RickAndMortyBaseRequest {
  final int id;

  SingleCharacterRequest({required this.id});

  @override
  String get path => '/api/character/$id';

  @override
  HttpMethods get httpMethod => HttpMethods.get;
}
