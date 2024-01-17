import 'package:flutter/material.dart';
import 'package:spotify/presentation/screens/home_screen/widget/play_cover.dart';
import 'package:spotify/presentation/screens/widget/theme.dart';


class PlayListScreen extends StatelessWidget {
  const PlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: (IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back))),
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.more_vert_rounded),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: CustomTheme().getTheme(),
        child: Column(
          children: [
                const SizedBox(
                  height: 40,
                ),
                const CoverPhoto(
                    url:
                        'https://c.ndtvimg.com/2022-06/j2h2qtro_ar-rahman_625x300_11_June_22.jpg'),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Daily Mix 1',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'by Spotify',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 56, 224, 61))),
                  onPressed: () {},
                  child: const Text(
                    'Shuffle play',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  child: ListView.builder(itemCount: 10, itemBuilder: (context, index){
                    return ListTile(
                      title: Text('Sugith'),
                      subtitle: Text('Hello Sugith.............'),
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded)),
                    );
                  }),
                )
          ],
        ),
      ),
    );
  }
}
