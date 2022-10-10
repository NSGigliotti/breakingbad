import 'package:breakingbad/pages/characters/repository/character_repository.dart';
import 'package:breakingbad/services/utils.dart';
import 'package:get/get.dart';

import '../../../model/character_model.dart';
import '../result/character_result.dart';

class CharacterController extends GetxController {
  List<CharacterModel> allChacaters = [];

  List<CharacterModel> characterSearch = [];

  List<CharacterModel> characterSearchResult = [];

  CharacterResult<CharacterModel>? currentCharacter;

  final characterRepository = CharacterRepository();

  final utilsServices = UtilsServices();

  bool isLoading = false;

  RxString searchTitle = ''.obs;

  void onInit() {
    super.onInit();

    debounce(searchTitle, (_) => filterByTitle(),
        time: const Duration(milliseconds: 600));

    getAllChacaters();
  }

  void setLoading(bool value) {
    isLoading = value;
    update();
  }

  Future<void> getAllChacaters() async {
    if (allChacaters.isEmpty) {
      setLoading(true);

      CharacterResult<CharacterModel> characterResult =
          await characterRepository.getAllChacaters();

      setLoading(false);

      characterResult.when(success: (data) {
        allChacaters.addAll(data);
      }, erro: (message) {
        utilsServices.showToast(message: message, isError: true);
      });
    }
    if (searchTitle.value.isNotEmpty) {
      characterSearchResult = allChacaters
          .where((e) => e.name
              .toString()
              .toLowerCase()
              .contains(searchTitle.value.toLowerCase()))
          .toList();
    }
    update();
  }


  void filterByTitle() async {
    getAllChacaters();
  }
}
