import 'dart:async';

import 'package:book_reader/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

import '../../core/configurations/pages_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, PagesRoutes.layoutView);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPaletteDark.secondaryPrimaryColor,
      ),
      child: Center(
          child: Image.asset(
              color: Colors.white,
              height: 150,
              width: 150,
              "assets/images/TempLogo.png")),
    );
  }
}
