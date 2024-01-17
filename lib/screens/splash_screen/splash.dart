import 'dart:async';
import 'package:Spotify/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/json/spotify_animation.json',
        )
      ),
    );
  }
}
