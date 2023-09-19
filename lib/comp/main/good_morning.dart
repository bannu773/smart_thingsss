import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GoodMoring extends StatefulWidget {
  const GoodMoring({super.key});

  @override
  State<GoodMoring> createState() => _GoodMoringState();
}

class _GoodMoringState extends State<GoodMoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set background color to white
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black, // Set arrow color to black
              size: 17, // Set the size of the arrow icon
            ),
          ),
        ),
      ),
    );
  }
}
