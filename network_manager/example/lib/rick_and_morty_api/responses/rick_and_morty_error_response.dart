import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/base_response.dart';

part 'rick_and_morty_error_response.g.dart';

@JsonSerializable()
class RickAndMortyErrorResponse extends INetworkResponse {
  final String? error;

  RickAndMortyErrorResponse({this.error});
  factory RickAndMortyErrorResponse.fromJson(Map<String, dynamic> json) => _$RickAndMortyErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RickAndMortyErrorResponseToJson(this);

  @override
  RickAndMortyErrorResponse fromJson(Map<String, dynamic> map) => _$RickAndMortyErrorResponseFromJson(map);
}
