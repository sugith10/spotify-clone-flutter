import 'package:flutter/material.dart';
import 'package:spotify/presentation/screen_transitions/right_to_left.dart';
import 'package:spotify/presentation/screens/home_screen/widget/hedding.dart';
import 'package:spotify/presentation/screens/home_screen/widget/play_cover.dart';
import 'package:spotify/presentation/screens/home_screen/widget/recently_played.dart';
import 'package:spotify/presentation/screens/play_list_screen/play_list_screen.dart';
import 'package:spotify/presentation/screens/widget/theme.dart';
import 'package:spotify/services/api.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: ApiCall().getArtistTopTrack(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while waiting for the data
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Show an error message if there's an error
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          // Show a message if there's no data
          return Text('No data available');
        } else {
          // Data is available, build the UI with the data
          List<dynamic> arRahman = snapshot.data!;

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
                            Navigator.of(context)
                                .push(rightToLeft(const PlayListScreen()));
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
      },
    );
  }
}
