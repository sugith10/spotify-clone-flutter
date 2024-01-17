import 'package:Spotify/screens/splash_screen/splash.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        colorScheme: const ColorScheme.dark(
          // primary:Colors.black,
          background: Colors.black,
          secondary: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      title: 'Spotify',
      home: Splash(),
    );
  }
}