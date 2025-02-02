import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:quran_app/features/surahs/domain/repositories/surah_info_repository.dart';

class SurahInfoRepositoryImpl extends SurahInfoRepository {
  @override
  Future<Map<String, dynamic>?> getSurahInfo({required int surahNumber}) async {
    final url =
        Uri.parse("https://api.alquran.cloud/v1/surah/$surahNumber/ar.alafasy");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        log(response.body.toString());
        return jsonDecode(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
