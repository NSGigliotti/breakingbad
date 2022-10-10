import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_result.freezed.dart';

@freezed
class  EpisodeResult<T> with _$EpisodeResult<T> {
    factory EpisodeResult.success(List<T> data) = Success ;
    factory EpisodeResult.erro(String message) = Error;
}