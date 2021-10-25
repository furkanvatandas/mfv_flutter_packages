import 'package:example/rick_and_morty_service/base/rick_and_morty_base_request.dart';
import 'package:network_manager/network_request.dart';

class SingleCharacterRequest extends RickAndMortyBaseRequest {
  final int id;

  SingleCharacterRequest({required this.id});

  @override
  String get path => '/api/character/$id';

  @override
  HttpMethods get httpMethod => HttpMethods.get;
}
