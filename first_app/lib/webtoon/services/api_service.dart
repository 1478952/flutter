import 'dart:convert';
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
}
