import 'package:breakingbad/model/episode_model.dart';
import 'package:breakingbad/pages/episodes/repository/episode_repository.dart';
import 'package:breakingbad/pages/episodes/result/episode_result.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';

class EpisodeController extends GetxController {
  List<EpisodesModel> allEpisodes = [];

  List<EpisodesModel> allEpisodesFilter = [];

  bool isLoading = false;

  final episodeRepository = EpisodeRepository();

  final utilsServices = UtilsServices();

  final List allSeries = ['All', 'Breaking Bad', 'Better Call Saul'];

  String? currentCategory;

  void onInit() {
    super.onInit();

    getAllEpides();
    currentCategory = allSeries[0];
    allEpisodesFilter = allEpisodes;
  }

  Future<void> getAllEpides() async {
    isLoading = true;

    EpisodeResult<EpisodesModel> episodeResult =
        await episodeRepository.getAllEpisode();

    isLoading = false;

    episodeResult.when(success: (data) {
      allEpisodes.addAll(data);
    }, erro: (message) {
      utilsServices.showToast(message: message, isError: true);
    });

    update();
  }

  void selectedSerie(serie) {
    if (serie == allSeries[0]) {
      currentCategory = allSeries[0];
      allEpisodesFilter = allEpisodes;
    }
    if (serie == allSeries[1]) {
      allEpisodesFilter = allEpisodes
          .where((e) => e.series.toString().contains(allSeries[1].toString()))
          .toList();
      currentCategory = allSeries[1];
    }
    if (serie == allSeries[2]) {
      allEpisodesFilter = allEpisodes
          .where((e) => e.series.toString().contains(allSeries[2].toString()))
          .toList();
      currentCategory = allSeries[2];
    }
    update();
  }
}
