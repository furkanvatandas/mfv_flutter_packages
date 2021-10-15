import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/base_response.dart';

part 'character_response.g.dart';

@JsonSerializable()
class CharacterResponse extends INetworkResponse {
  final Info? info;
  final List<Result?>? results;

  CharacterResponse({this.info, this.results});

  factory CharacterResponse.fromJson(Map<String, dynamic> json) => _$CharacterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterResponseToJson(this);

  @override
  fromJson(Map<String, dynamic> map) => _$CharacterResponseFromJson(map);

  @override
  String toString() => 'CharacterResponse(info: $info, results: $results)';
}

@JsonSerializable()
class Info {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  Info({this.count, this.pages, this.next, this.prev});
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoToJson(this);
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

@JsonSerializable()
class Result {
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

  Result({
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

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
