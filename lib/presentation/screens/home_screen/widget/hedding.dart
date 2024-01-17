import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  const Heading({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 23,
      ),
    );
  }
}
