import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_result.freezed.dart';

@freezed
class  CharacterResult<T> with _$CharacterResult<T> {
    factory CharacterResult.success(List<T> data) = Success ;
    factory CharacterResult.erro(String message) = Error;
}