import 'dart:ui';

import 'package:Arum_Smart_Home/comp/splash/splashscreen.dart';
import 'package:Arum_Smart_Home/comp/widget/change_theme_button_widget.dart';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:Arum_Smart_Home/comp/Life/life.dart';
import 'package:Arum_Smart_Home/comp/Life/life_1.dart';
import 'package:Arum_Smart_Home/comp/devices/device_main.dart';
import 'package:Arum_Smart_Home/comp/devices/kitchen.dart';
import 'package:Arum_Smart_Home/comp/devices/living_room.dart';
import 'package:Arum_Smart_Home/comp/devices/test.dart';
import 'package:Arum_Smart_Home/comp/main/dishwasher/dish_washer.dart';
import 'package:Arum_Smart_Home/comp/main/favrite.dart';
import 'package:Arum_Smart_Home/comp/menu.dart';
import 'package:provider/provider.dart';

import 'color/colors.dart' as color;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
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
    Devices(),
    Lifee(),
    Kitchen(),
    Menu(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: Scaffold(
              body: _pages[_currentIndex],
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: BottomNavigationBar(
                      elevation: 0,
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Colors.transparent,
                      selectedItemColor: Colors.white,
                      unselectedItemColor: color.AppColor.unselected_items,
                      currentIndex: _currentIndex,
                      onTap: _onTabTapped,
                      items: [
                        BottomNavigationBarItem(
                          icon: _currentIndex == 0
                              ? Icon(Icons.star)
                              : Icon(Icons.star_border_outlined),
                          label: 'Favorites',
                        ),
                        BottomNavigationBarItem(
                          icon: _currentIndex == 1
                              ? Icon(Icons.developer_board_outlined)
                              : Icon(Icons.developer_board),
                          label: 'Devices',
                        ),
                        BottomNavigationBarItem(
                          icon: _currentIndex == 2
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border_outlined),
                          label: 'Life',
                        ),
                        BottomNavigationBarItem(
                          icon: _currentIndex == 3
                              ? Icon(Icons.play_circle)
                              : Icon(Icons.play_circle_outline),
                          label: 'Automations',
                        ),
                        BottomNavigationBarItem(
                          icon: _currentIndex == 4
                              ? Icon(Icons.menu)
                              : Icon(Icons.menu),
                          label: 'Menu',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}
