import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/network_model.dart';

part 'character_response.g.dart';

@JsonSerializable()
class CharacterResponse extends INetworkModel {
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
class OriginItem {
  final String? name;
  final String? url;

  OriginItem({this.name, this.url});
  factory OriginItem.fromJson(Map<String, dynamic> json) => _$OriginItemFromJson(json);
  Map<String, dynamic> toJson() => _$OriginItemToJson(this);
}

@JsonSerializable()
class LocationItem {
  final String? name;
  final String? url;

  LocationItem({this.name, this.url});
  factory LocationItem.fromJson(Map<String, dynamic> json) => _$LocationItemFromJson(json);
  Map<String, dynamic> toJson() => _$LocationItemToJson(this);
}

@JsonSerializable()
class Result {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final OriginItem? origin;
  final LocationItem? location;
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
