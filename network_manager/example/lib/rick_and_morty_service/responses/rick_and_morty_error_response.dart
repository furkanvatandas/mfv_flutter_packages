import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/network_model.dart';

part 'rick_and_morty_error_response.g.dart';

@JsonSerializable()
class RickAndMortyErrorResponse extends INetworkModel {
  final String? error;

  RickAndMortyErrorResponse({this.error});
  factory RickAndMortyErrorResponse.fromJson(Map<String, dynamic> json) => _$RickAndMortyErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RickAndMortyErrorResponseToJson(this);

  @override
  RickAndMortyErrorResponse fromJson(Map<String, dynamic> map) => _$RickAndMortyErrorResponseFromJson(map);
}
