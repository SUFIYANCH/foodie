import 'package:flutter/material.dart';
import 'package:food_delivery/home/homepage.dart';
import 'package:food_delivery/home/map_page.dart';
import 'package:food_delivery/home/profile.dart';
import 'package:food_delivery/home/restaurant.dart';
import 'package:food_delivery/utils/constants.dart';

class CommonNav extends StatefulWidget {
  const CommonNav({super.key});

  @override
  State<StatefulWidget> createState() => _CommonNavState();
}

class _CommonNavState extends State<CommonNav> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          Restaurant(),
          MapPage(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            pageController.animateToPage(
              selectedIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
