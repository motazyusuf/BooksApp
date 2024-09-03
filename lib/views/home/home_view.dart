import 'package:book_reader/core/theme/color_palette.dart';
import 'package:book_reader/views/home/widgets/book_suggestion.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ColorPaletteDark.primaryColor,
      appBar: AppBar(
        leading: SizedBox(
          width: 10,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        shape: const Border(
            bottom: BorderSide(color: Color(0x2AB4A6A6), width: 0.25)),
        backgroundColor: ColorPaletteDark.primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                height: 25,
                width: 25,
                color: ColorPaletteDark.accentColor,
                "assets/images/TempLogo.png"),
            SizedBox(
              width: 10,
            ),
            Text(
              "Books App",
              style:
                  TextStyle(color: ColorPaletteDark.accentColor, fontSize: 15),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15.0),
        child: Column(
          children: [
            // Book suggestion
            BookSuggestion(),
          ],
        ),
      ),
    );
  }
}
