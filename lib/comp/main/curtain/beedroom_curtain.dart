import 'dart:convert';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'curtain_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Arum_Smart_Home/comp/main/dishwasher/dish_washer.dart';
import '../../../color/colors.dart' as color;
import '../../../color/dark_color.dart' as darkcolor;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Beedroom_curtain extends StatefulWidget {
  const Beedroom_curtain({super.key});

  @override
  State<Beedroom_curtain> createState() => _Beedroom_curtainState();
}

class _Beedroom_curtainState extends State<Beedroom_curtain> {
  double brightnessLevel = 0.5;

  @override
  void initState() {
    super.initState();
    CurtainHistory().loadHistory();
  }

  void updateBrightnessLevel(double value) {
    setState(() {
      brightnessLevel = value;
      CurtainHistory().addToHistory(value * 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final curtain_dev = themeProvider.isDarkMode
        ? color.AppColor.curtain_div
        : darkcolor.AppColorDark.curtain_div;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Curtain",
              style: TextStyle(
                // color: Colors.black,
                fontSize: 18,
              ),
            ),
            Text(
              "Virtual Home - Living Room",
              style: TextStyle(
                // color: Colors.black,
                fontSize: 12,
              ),
            )
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(
              Icons.arrow_back_ios,
              // color: Colors.black,
              size: 19,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                // color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 15, bottom: 30, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Icon(
                  Icons.blinds_closed,
                  size: 50,
                ),
              ),
              Container(
                child: Text(
                  "Curtain",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  "Virtual Home - Bedroom",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: curtain_dev,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text("Window shade"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Icon(
                              Icons.blinds_closed,
                              size: 45,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Closed",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text("Shade level"),
                        ),
                        Container(
                          child: Text(
                            "${(brightnessLevel * 100).toStringAsFixed(2)} %",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    Slider(
                      value: brightnessLevel,
                      onChanged: updateBrightnessLevel,
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Supported devices may differ depending on your country or model.Design and features of actual devices may not be the same as virtual deivecs",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
