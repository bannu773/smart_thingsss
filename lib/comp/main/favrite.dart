import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_things/comp/main/dish_washer.dart';
import '../../color/colors.dart' as color;
import 'package:get/get.dart';

class Favrite extends StatefulWidget {
  const Favrite({super.key});

  @override
  State<Favrite> createState() => _FavriteState();
}

class _FavriteState extends State<Favrite> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Virtual Home ",
            style: TextStyle(color: Colors.white),
          ),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  size: 26.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        // Section 1--------------------------------------------------------------------------- 2 Boxes
        body: Container(
          width: currentWidth,
          height: currentHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.AppColor.gradientFirst.withOpacity(0.8),
              color.AppColor.gradientSecond.withOpacity(0.9),
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(right: 15, left: 15, top: 30),
              margin: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  // Whole Box ---------------------- to hold 2 boxes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Box ----------------------- Battery

                      GestureDetector(
                        onTap: () {
                          Get.to(DishWasher());
                        },
                        child: Container(
                          width:
                              currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                          height: currentWidth > 372 ? 150 : 130,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor.gradientboxFirst
                                      .withOpacity(0.6),
                                  color.AppColor.gradientboxFirst
                                      .withOpacity(0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 10),
                                    blurRadius: 10,
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.2)),
                              ]),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, bottom: 20, top: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: currentWidth > 372 ? 60 : 45,
                                  height: currentWidth > 372 ? 60 : 45,
                                  margin: EdgeInsets.only(bottom: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.battery_1_bar_sharp,
                                    color: Colors.black,
                                    size: currentWidth > 372 ? 40 : 35,
                                  ),
                                ),
                                Text(
                                  "1 hr 5 mins left on Kitchen Dishwasher",
                                  style: TextStyle(
                                    fontSize: currentWidth > 372 ? 13 : 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Second Box ---------------------- Low Battery
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 20, right: 20, bottom: 20, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: currentWidth > 372 ? 60 : 45,
                                height: currentWidth > 372 ? 60 : 45,
                                margin: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                    color: Colors.amber[600],
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  Icons.battery_1_bar_sharp,
                                  color: Colors.white,
                                  size: currentWidth > 372 ? 40 : 35,
                                ),
                              ),
                              Text(
                                "Low battery on Bedroom Curtain",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 13 : 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Space
                  SizedBox(
                    height: 30,
                  ),

                  //--------------------------------------- Section 2-----------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: 65,
                        margin: EdgeInsets.only(left: 0, bottom: 10, top: 0),
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: currentWidth > 372 ? 35 : 30,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage('assets/good.png'),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5.9,
                                    child: Text(
                                      "Good Moring",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Color.fromARGB(255, 236, 236, 236),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: 65,
                        margin: EdgeInsets.only(left: 0, bottom: 10, top: 0),
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: currentWidth > 372 ? 35 : 30,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage('assets/door.png'),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5.9,
                                    child: Text(
                                      "Outgoing",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Color.fromARGB(255, 236, 236, 236),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: 65,
                        margin: EdgeInsets.only(left: 0, bottom: 10, top: 0),
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: currentWidth > 372 ? 35 : 30,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage('assets/movie.png'),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5.9,
                                    child: Text(
                                      "Movie",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Color.fromARGB(255, 236, 236, 236),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: 65,
                        margin: EdgeInsets.only(left: 0, bottom: 10, top: 0),
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: currentWidth > 372 ? 35 : 30,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage('assets/brush.png'),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5.9,
                                    child: Text(
                                      "Clean",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Color.fromARGB(255, 236, 236, 236),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Section 3 --------------------------------- Living Room
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: currentWidth,
                    height: 180,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientboxFirst.withOpacity(0.6),
                          color.AppColor.gradientboxFirst.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                child: Icon(Icons.power),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Living room",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Text(
                            "Camera",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Text(
                            "on",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ///////// Section 4 ----------- Functionalities
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Box ----------------------- Battery

                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Air Conditioner",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "off",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Second Box ---------------------- Low Battery
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Robot Vaccum",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Paused",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Section 5 --------------------------------///////----------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Box ----------------------- Battery

                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Air Purifier",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "off",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Second Box ---------------------- Low Battery
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Door lock",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "locked",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Section 6 ------------  //////////////////

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Box ----------------------- Battery

                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Outlet",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "on",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Second Box ---------------------- Low Battery
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Curtain",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "locked",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Section 7 ----------/////////////

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Box ----------------------- Battery

                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Light",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "on",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Second Box ---------------------- Low Battery
                      Container(
                        width: currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                        height: currentWidth > 372 ? 150 : 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.6),
                                color.AppColor.gradientboxFirst
                                    .withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 10),
                                  blurRadius: 10,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.2)),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //////////////// Row -------------------------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: currentWidth > 372 ? 40 : 35,
                                    height: currentWidth > 372 ? 40 : 35,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.black,
                                      size: currentWidth > 372 ? 40 : 33,
                                    ),
                                  ),
                                  Container(
                                    width: currentWidth > 372 ? 45 : 40,
                                    height: currentWidth > 372 ? 45 : 40,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: currentWidth > 372 ? 25 : 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Living room",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Curtain",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "locked",
                                style: TextStyle(
                                  fontSize: currentWidth > 372 ? 16 : 12,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // ---------------------------------------- Section 4
            ),
          ),
        ),
      ),
    );
  }
}
