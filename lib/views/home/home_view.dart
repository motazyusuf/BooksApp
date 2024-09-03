import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: const Text(
      "Home",
      style: TextStyle(color: Colors.white),
    ));
  }
}
