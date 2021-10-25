import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/network_model.dart';

part 'single_character_response.g.dart';

@JsonSerializable()
class SingleCharacterResponse extends INetworkModel {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Origin? origin;
  final Location? location;
  final String? image;
  final List<String?>? episode;
  final String? url;
  final DateTime? created;

  SingleCharacterResponse({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  factory SingleCharacterResponse.fromJson(Map<String, dynamic> json) => _$SingleCharacterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SingleCharacterResponseToJson(this);

  @override
  fromJson(Map<String, dynamic> map) => _$SingleCharacterResponseFromJson(map);
}

@JsonSerializable()
class Origin {
  final String? name;
  final String? url;

  Origin({this.name, this.url});
  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);
  Map<String, dynamic> toJson() => _$OriginToJson(this);
}

@JsonSerializable()
class Location {
  final String? name;
  final String? url;

  Location({this.name, this.url});
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
