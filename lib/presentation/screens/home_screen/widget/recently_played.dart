import 'package:flutter/material.dart';
import 'package:spotify/presentation/screens/home_screen/widget/hedding.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Heading(title: 'Recently Played'),
        Spacer(),
        Icon(
          Icons.settings_outlined,
          size: 23,
        )
      ],
    );
  }
}
