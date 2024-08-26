import 'dart:convert';
import 'package:first_app/webtoon/models/webtoon_detail_model.dart';
import 'package:first_app/webtoon/models/webtoon_episode_model.dart';
import 'package:first_app/webtoon/models/webtoon_model.dart';
import 'package:http/http.dart';

class ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodayToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final response = await get(Uri.parse('$baseUrl/$today'));

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);

        webtoonInstances.add(toon);
      }

      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final response = await get(Uri.parse('$baseUrl/$id'));

    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);

      return WebtoonDetailModel.fromJson(webtoon);
    }

    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodeById(
      String id) async {
    final response = await get(Uri.parse('$baseUrl/$id/episodes'));
    List<WebtoonEpisodeModel> episodesInstances = [];

    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);

      for (var episode in episodes) {
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }

      return episodesInstances;
    }

    throw Error();
  }
}
