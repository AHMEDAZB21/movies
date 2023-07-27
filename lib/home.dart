import 'package:flutter/material.dart';
import 'package:movies/tabs/home_tab.dart';
import 'package:movies/tabs/search_tab.dart';
import 'package:movies/tabs/watchlist_tab.dart';
import 'package:movies/utils/app_color.dart';

import 'tabs/browse_tab.dart';

class Home extends StatefulWidget {

  static String routeName = "home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTap = 0;
  List<Widget> taps = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchListTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: taps[currentTap],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTap,
          onTap: (index) {
            currentTap = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: Colors.black, // <-- This works for fixed
          selectedItemColor: AppColors.accentColor,
          unselectedItemColor: AppColors.bottomColor,
          items: const [
            BottomNavigationBarItem(label: "HOME", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "SEARCH", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "BROWSE", icon: Icon(Icons.movie)),
            BottomNavigationBarItem(label: "WATCHLIST", icon: Icon(Icons.book)),
          ],
        ));
  }
}
