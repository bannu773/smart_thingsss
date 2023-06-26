import 'package:flutter/material.dart';
import 'package:smart_things/comp/menu.dart';

class DishWasher extends StatefulWidget {
  const DishWasher({super.key});

  @override
  State<DishWasher> createState() => _DishWasherState();
}

class _DishWasherState extends State<DishWasher> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(width: currentWidth),
    );
  }
}
