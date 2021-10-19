// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disney_character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisneyCharacterResponse _$DisneyCharacterResponseFromJson(
        Map<String, dynamic> json) =>
    DisneyCharacterResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      nextPage: json['nextPage'] as String?,
    );

Map<String, dynamic> _$DisneyCharacterResponseToJson(
        DisneyCharacterResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'totalPages': instance.totalPages,
      'nextPage': instance.nextPage,
    };

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      shortFilms: (json['shortFilms'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      tvShows: (json['tvShows'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      videoGames: (json['videoGames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      parkAttractions: (json['parkAttractions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      allies: json['allies'] as List<dynamic>?,
      enemies: json['enemies'] as List<dynamic>?,
      id: json['_id'] as int?,
      sourceUrl: json['sourceUrl'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      url: json['url'] as String?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'films': instance.films,
      'shortFilms': instance.shortFilms,
      'tvShows': instance.tvShows,
      'videoGames': instance.videoGames,
      'parkAttractions': instance.parkAttractions,
      'allies': instance.allies,
      'enemies': instance.enemies,
      '_id': instance.id,
      'sourceUrl': instance.sourceUrl,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      '__v': instance.v,
    };
