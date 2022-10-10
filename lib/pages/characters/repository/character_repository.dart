import 'package:breakingbad/constants/endpoints.dart';
import 'package:breakingbad/model/character_model.dart';
import 'package:breakingbad/pages/characters/result/character_result.dart';
import 'package:breakingbad/services/http_maneger.dart';

class CharacterRepository {
  final HttpManeger _httpManeger = HttpManeger();

  Future<CharacterResult<CharacterModel>> getAllChacaters() async {
    final result = await _httpManeger.restRequest(url: EndPoints.characters);

    if (result.isNotEmpty) {
      List<CharacterModel> data = (List<Map<String, dynamic>>.from(result))
          .map(CharacterModel.fromJson)
          .toList();
      return CharacterResult<CharacterModel>.success(data);
    } else {
      return CharacterResult.erro('Ocorreu erro inesperado');
    }
  }
}
