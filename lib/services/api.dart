import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiCall {
  final String apiKey = 'a011df810f7862091f0bb3edb76d1c60';
  final String baseUrl = 'http://ws.audioscrobbler.com/2.0/';

  Future<void> getTopAlbums() async {
    const method = 'chart.getTopArtists';
    const limit = '10';
    final url =
        '$baseUrl?method=$method&api_key=$apiKey&limit=$limit&format=json';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        print('success');
        print(response.body);
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> albums = data['albums']['album'];

        for (final album in albums) {
          final String albumName = album['name'];
          final String artistName = album['artist']['name'];

          print('Album: $albumName, Artist: $artistName');
        }
      } else {
        print('Failed to get top albums. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<List<dynamic>> getArtistTopTrack() async {
    const method = 'artist.gettoptracks';
    const limit = '10';
    const artist = 'A.R.+Rahman';

    final url =
        '$baseUrl?method=$method&artist=$artist&api_key=$apiKey&limit=$limit&format=json';

    // final url = '$baseUrl?method=$method&artist=$artist&api_key=$apiKey&format=json';

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
