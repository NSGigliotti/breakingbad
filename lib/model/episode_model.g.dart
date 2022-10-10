// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) =>
    EpisodesModel(
      id: json['episode_id'] as int,
      title: json['title'] as String,
      season: json['season'] as String,
      episode: json['episode'] as String,
      air_date: json['air_date'] as String,
      characters: json['characters'] as List<dynamic>,
      series: json['series'] as String,
    );

Map<String, dynamic> _$EpisodesModelToJson(EpisodesModel instance) =>
    <String, dynamic>{
      'episode_id': instance.id,
      'title': instance.title,
      'season': instance.season,
      'episode': instance.episode,
      'air_date': instance.air_date,
      'characters': instance.characters,
      'series': instance.series,
    };
