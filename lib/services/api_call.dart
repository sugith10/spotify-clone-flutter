import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiCall {
  final String baseUrl = 'http://ws.audioscrobbler.com/2.0/';
  final String apiKey = 'a011df810f7862091f0bb3edb76d1c60';

  Future<List> getArtistTopTrack() async {
    const method = 'artist.gettoptracks';
    const limit = '10';
    const artist = 'A.R.+Rahman';

    final url =
        '$baseUrl?method=$method&artist=$artist&api_key=$apiKey&limit=$limit&format=json';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        log('success');
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['toptracks']['track'] as List<dynamic>;
        
     return results;
      }
    } catch (e) {
      log('error: $e');
    }
    return [];
  }
}
