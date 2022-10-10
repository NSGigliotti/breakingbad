import 'package:breakingbad/pages/episodes/controller/episode_controller.dart';
import 'package:get/get.dart';

class EpisodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EpisodeController());
  }
}
