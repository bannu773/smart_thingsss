import 'package:flutter/material.dart';
import 'package:smart_things/comp/Life/life.dart';
import 'package:smart_things/comp/Life/life_1.dart';
import 'package:smart_things/comp/devices/kitchen.dart';
import 'package:smart_things/comp/devices/living_room.dart';
import 'package:smart_things/comp/devices/test.dart';
import 'package:smart_things/comp/main/dish_washer.dart';
import 'package:smart_things/comp/menu.dart';

import 'comp/main/favrite.dart';
import 'color/colors.dart' as color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DishWasher(),
    );
  }
}
