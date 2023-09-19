import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:Arum_Smart_Home/comp/Life/life.dart';
import 'package:Arum_Smart_Home/comp/Life/life_1.dart';
import 'package:Arum_Smart_Home/comp/devices/kitchen.dart';
import 'package:Arum_Smart_Home/comp/devices/living_room.dart';
import 'package:Arum_Smart_Home/comp/devices/test.dart';
import 'package:Arum_Smart_Home/comp/main/dishwasher/dish_washer.dart';
import 'package:Arum_Smart_Home/comp/main/favrite.dart';
import 'package:Arum_Smart_Home/comp/menu.dart';

import 'color/colors.dart' as color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Favrite(),
    Livving_room(),
    Life(),
    Kitchen(),
    Menu(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[0],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
