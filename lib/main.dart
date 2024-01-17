import 'package:flutter/material.dart';
import 'package:spotify/presentation/screens/splash_screen/splash.dart';

main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        // appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        colorScheme: const ColorScheme.dark(
          primary:Colors.black,
          background: Colors.black,
          secondary: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      title: 'Spotify',
      home: const Splash(),
    );
  }
}
