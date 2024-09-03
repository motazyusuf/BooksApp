import 'package:book_reader/core/theme/color_palette.dart';
import 'package:book_reader/views/explore/explore_view.dart';
import 'package:book_reader/views/home/home_view.dart';
import 'package:book_reader/views/myAccount/myAccount_view.dart';
import 'package:book_reader/views/myBooks/myBooks_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LayoutView extends StatefulWidget {
  LayoutView({super.key});

  int selectedIndex = 0;

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> layouts = [
    const HomeView(),
    const ExploreView(),
    const MyBooksView(),
    const MyAccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: ColorPaletteDark.bottomNavBarColor,
      ),
      child: Scaffold(
          backgroundColor: ColorPaletteDark.primaryColor,
          body: layouts[widget.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Color(0xFF928B8B),
              type: BottomNavigationBarType.fixed,
              fixedColor: ColorPaletteDark.accentColor,
              backgroundColor: ColorPaletteDark.bottomNavBarColor,
              currentIndex: widget.selectedIndex,
              onTap: (index) {
                // print("Tapped");
                print("index ---> ${index}");
                widget.selectedIndex = index;
                print("Selected index ---> ${widget.selectedIndex}");
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_work_outlined,
                      size: 40,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded, size: 40),
                  label: "Explore",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book_sharp, size: 40),
                    label: "My Books"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, size: 40), label: "My Account"),
              ])),
    );
  }
}
