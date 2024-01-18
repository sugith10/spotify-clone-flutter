import 'package:flutter/material.dart';
import 'package:spotify/model/song_details.dart';
import 'package:spotify/presentation/screen_transitions/right_to_left.dart';
import 'package:spotify/presentation/screens/home_screen/widget/hedding.dart';
import 'package:spotify/presentation/screens/home_screen/widget/play_cover.dart';
import 'package:spotify/presentation/screens/home_screen/widget/recently_played.dart';
import 'package:spotify/presentation/screens/play_list_screen/play_list_screen.dart';
import 'package:spotify/presentation/screens/widget/theme.dart';
import 'package:spotify/services/api_call.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> arRahmanSongs = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     fetchData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: CustomTheme().getTheme(),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: RecentlyPlayed(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      print(arRahmanSongs.length);
                      List<SongDetails> songs = getData();
                      Navigator.of(context)
                          .push(rightToLeft( PlayListScreen( songs:songs,)));
                    },
                    child: const CoverPhoto(
                      url:
                          'https://c.ndtvimg.com/2022-06/j2h2qtro_ar-rahman_625x300_11_June_22.jpg',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Daily Mix 1',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Heading(title: 'Made for you')],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> fetchData() async{
    arRahmanSongs =  await ApiCall().getArtistTopTrack();
  
    int len = arRahmanSongs.length;
    print('arRahman songs $len ');
    arRahmanSongs.forEach((e){
      print(e);
    });
  }

   List<SongDetails> getData(){
    List<SongDetails> songDetails = arRahmanSongs.map((dynamic item) {
      return SongDetails(
          songTitle: item['name'],
          artistsDetails: item['artist']['name'],
          songDetails: item['url'],
          songCover: item['image'][1]['#text']
          );
    }).toList();
    return songDetails;
  }
}
