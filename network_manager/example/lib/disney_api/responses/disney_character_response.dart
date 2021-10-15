import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/base_response.dart';

part 'disney_character_response.g.dart';

@JsonSerializable()
class DisneyCharacterResponse extends INetworkResponse {
  final List<Character?>? data;
  final int? count;
  final int? totalPages;
  final String? nextPage;

  DisneyCharacterResponse({this.data, this.count, this.totalPages, this.nextPage});

  factory DisneyCharacterResponse.fromJson(Map<String, dynamic> json) => _$DisneyCharacterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DisneyCharacterResponseToJson(this);
  @override
  DisneyCharacterResponse fromJson(Map<String, dynamic> map) => _$DisneyCharacterResponseFromJson(map);
}

@JsonSerializable()
class Character {
  final List<String?>? films;
  final List<String?>? shortFilms;
  final List<String?>? tvShows;
  final List<String?>? videoGames;
  final List<String?>? parkAttractions;
  final List<Object?>? allies;
  final List<Object?>? enemies;
  @JsonKey(name: '_id')
  final int? id;
  final String? sourceUrl;
  final String? name;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? url;
  @JsonKey(name: '__v')
  final int? v;

  Character({
    this.films,
    this.shortFilms,
    this.tvShows,
    this.videoGames,
    this.parkAttractions,
    this.allies,
    this.enemies,
    this.id,
    this.sourceUrl,
    this.name,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.v,
  });

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
