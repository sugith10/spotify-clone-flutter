import 'package:flutter/material.dart';
import 'package:spotify/presentation/screens/favourite_screen/favourite_screen.dart';
import 'package:spotify/presentation/screens/home_screen/home_screen.dart';
import 'package:spotify/presentation/screens/premium_screen/premium_screen.dart';
import 'package:spotify/presentation/screens/search_screen/search_screen.dart';

class WidgetList {
  WidgetList();

  final List<Widget> mainScreens = [
    HomeScreen(),
    const SearchScreen(),
    const FavouritesScreen(),
    const PremiumScreen()
  ];
}
