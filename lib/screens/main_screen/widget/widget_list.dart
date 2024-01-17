import 'package:flutter/material.dart';
import 'package:spotify/screens/favourite_screen/favourite_screen.dart';
import 'package:spotify/screens/home_screen/home_screen.dart';
import 'package:spotify/screens/premium_screen/premium_screen.dart';
import 'package:spotify/screens/search_screen/search_screen.dart';

class WidgetList {
  WidgetList();

  final List<Widget> mainScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const FavouritesScreen(),
    const PremiumScreen()
  ];
}
