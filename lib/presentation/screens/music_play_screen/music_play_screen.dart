import 'package:flutter/material.dart';
import 'package:spotify/presentation/screens/widget/theme.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 40),
        ),
        actions: const [
          Icon(Icons.more_vert_rounded),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        decoration: CustomTheme().getTheme(),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      offset: const Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 0.5
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10)
                  ,child: Image.network('https://c.ndtvimg.com/2022-06/j2h2qtro_ar-rahman_625x300_11_June_22.jpg', fit: BoxFit.cover,)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arabic Kuthu',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text('AR Rahman'),
                    SizedBox(height: 25,),
                    LinearProgressIndicator(backgroundColor: Colors.white),
                     SizedBox(height: 10,),
                     Text('time'),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.favorite_border),
                        Icon(Icons.skip_previous_rounded,),
                        Icon(Icons.stop_circle_rounded,size: 60,),
                        Icon(Icons.skip_next_rounded),
                        Icon(Icons.shuffle_rounded)
                      ],
                     )
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.multitrack_audio_rounded),
                Text('Audio quality: Basic'),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
