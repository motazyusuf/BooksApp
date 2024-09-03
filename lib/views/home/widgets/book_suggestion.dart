import 'package:book_reader/views/home/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/color_palette.dart';

class BookSuggestion extends StatelessWidget {
  const BookSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height / 4.1,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          end: Alignment.topLeft,
          begin: Alignment.bottomRight,
          colors: [
            Color(0xD500404),
            Color(0x28500404),
            Color(0x74000000),
            ColorPaletteDark.primaryColor,
          ],
        ),
      ),
      child: Row(
        children: [
          // book cover
          Container(
            height: 200,
            width: 110,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bookCover.jpg")),
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.all(10),
          ),
//----------------------------------------------------------------------------//
          // book details
          Padding(
            padding: EdgeInsets.only(top: 5, left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // book title
                const Text(
                  "Book Title",
                  style: TextStyle(
                      letterSpacing: 3,
                      color: Colors.white,
                      fontSize: 20,
                      wordSpacing: 10),
                ),
                const SizedBox(
                  height: 3,
                ),

                // author
                const Text("Book Author",
                    style: TextStyle(
                        letterSpacing: 3,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFB2B1B1),
                        fontSize: 13,
                        wordSpacing: 10)),
                const SizedBox(
                  height: 5,
                ),
                RatingBar(rating: 4),
                const SizedBox(
                  height: 5,
                ),

                // price
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Text(
                        "19.99",
                        style: TextStyle(color: ColorPaletteDark.accentColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("EUR",
                          style: TextStyle(
                            fontSize: 9,
                            color: Color(0xFFB2B1B1),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                // number of pages
                const Text("195 Pages | 2 hours read",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFB2B1B1),
                      fontSize: 10,
                    )),

                //Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Save
                    Icon(
                      Icons.flag_outlined,
                      color: ColorPaletteDark.accentColor,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(color: ColorPaletteDark.accentColor),
                    ),

                    SizedBox(
                      width: 35,
                    ),
                    //Read
                    FilledButton(
                        style: FilledButton.styleFrom(
                            fixedSize: Size(90, 30),
                            backgroundColor: ColorPaletteDark.accentColor),
                        onPressed: () {},
                        child: Text(
                          "Read",
                          style:
                              TextStyle(color: ColorPaletteDark.primaryColor),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
