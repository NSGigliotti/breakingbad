import 'package:breakingbad/constants/endpoints.dart';
import 'package:breakingbad/model/episode_model.dart';
import 'package:breakingbad/pages/episodes/result/episode_result.dart';

import '../../../services/http_maneger.dart';

class EpisodeRepository {
  final HttpManeger _httpManeger = HttpManeger();

  Future<EpisodeResult<EpisodesModel>> getAllEpisode() async {
    final result = await _httpManeger.restRequest(url: EndPoints.episodes);

    if (result.isNotEmpty) {
      List<EpisodesModel> data = (List<Map<String, dynamic>>.from(result))
          .map(EpisodesModel.fromJson)
          .toList();
      return EpisodeResult<EpisodesModel>.success(data);
    } else {
      return EpisodeResult.erro('Ocorreu um erro inesperado');
    }
  }
}
