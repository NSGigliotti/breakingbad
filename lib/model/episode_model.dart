import 'package:json_annotation/json_annotation.dart';

part 'episode_model.g.dart';

@JsonSerializable()
class EpisodesModel {
  @JsonKey(name:'episode_id')
  int id;
  String title;
  String season;
  String episode;
  String air_date;
  List characters;
  String series;

  EpisodesModel({
    required this.id,
    required this.title,
    required this.season,
    required this.episode,
    required this.air_date,
    required this.characters,
    required this.series,
  });

  factory EpisodesModel.fromJson(Map<String,dynamic> json)=>_$EpisodesModelFromJson(json);

  Map<String , dynamic> toJson() => _$EpisodesModelToJson(this);
}
