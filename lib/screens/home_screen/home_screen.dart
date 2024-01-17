import 'package:flutter/material.dart';
import 'package:spotify/screens/home_screen/widget/hedding.dart';
import 'package:spotify/screens/home_screen/widget/play_cover.dart';
import 'package:spotify/screens/home_screen/widget/recently_played.dart';
import 'package:spotify/screens/play_list_screen/play_list_screen.dart';
import 'package:spotify/screens/widget/theme.dart';
import 'package:spotify/services/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiCall().getArtistTopTrack();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  CustomTheme().getTheme(),
        child: ListView(
          children:  [
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PlayListScreen()));
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
}
