import 'package:book_reader/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  RatingBar({super.key, required this.rating});

  List<Widget> starsList = [];
  int rating;

  @override
  Widget build(BuildContext context) {
    int temp = 5 - rating;

    for (int i = 0; i < rating; i++) {
      starsList.add(Icon(
        Icons.star,
        color: ColorPaletteDark.accentColor,
        size: 20,
      ));
    }

    for (int i = temp; i > 0; i--) {
      starsList.add(Icon(
        Icons.star_border,
        color: ColorPaletteDark.accentColor,
        size: 20,
      ));
    }

    return Row(children: starsList);
  }
}
