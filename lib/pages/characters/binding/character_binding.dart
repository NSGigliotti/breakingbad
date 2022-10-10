import 'package:breakingbad/pages/characters/controller/character_controller.dart';
import 'package:get/get.dart';

class CharacterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CharacterController());
  }
}
