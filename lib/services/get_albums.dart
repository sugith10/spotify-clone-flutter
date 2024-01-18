import 'package:spotify/services/api_call.dart';

class GetAlbums{
  ApiCall apiCall =ApiCall();
  Future<void>getTopAlbums() async{
    const method = 'chart.getTopArtists';
    const limit = '10';
    
  }


}