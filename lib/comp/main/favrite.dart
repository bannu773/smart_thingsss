import 'dart:convert';
import 'dart:ui';

import 'package:Arum_Smart_Home/comp/widget/change_theme_button_widget.dart';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Arum_Smart_Home/comp/main/curtain/beedroom_curtain.dart';
import 'package:Arum_Smart_Home/comp/main/curtain/main.dart';
import 'package:Arum_Smart_Home/comp/main/dishwasher/dish_washer.dart';
import 'package:Arum_Smart_Home/comp/main/door_lock.dart';
import 'package:Arum_Smart_Home/comp/main/good_morning.dart';
import 'package:Arum_Smart_Home/comp/main/living_room.dart';
import 'package:Arum_Smart_Home/comp/main/outlet.dart';
import 'package:Arum_Smart_Home/comp/main/smart_tag.dart';
import 'package:Arum_Smart_Home/comp/main/vaccum.dart';
import 'package:Arum_Smart_Home/comp/main/light.dart';
import 'package:Arum_Smart_Home/comp/main/air_purifier.dart';
import 'package:provider/provider.dart';
import '../../color/colors.dart' as color;
import '../../color/dark_color.dart' as darkcolor;
import 'package:get/get.dart';

import 'air_condition/air_condition.dart';
import 'setting/settings.dart';

class Favrite extends StatefulWidget {
  const Favrite({super.key});

  @override
  State<Favrite> createState() => _FavriteState();
}

class _FavriteState extends State<Favrite> {
  final List<String> livingText = [
    "Living room\nAir Conditioner",
    "Living room\nRobot Vaccum",
    "Living room\nAir Purifier",
    "Living room\nDoor Lock",
    "Living room\nOutlet",
    "Living room\nCurtain",
    "Living room\nLight", // New item added
    "Living room\nSmartTag", // New item added
    // Add more grid items if needed
  ];

  final List<IconData> livingIcons = [
    Icons.kitchen,
    Icons.person_2,
    Icons.account_box,
    Icons.lock,
    Icons.face,
    Icons.curtains,
    Icons.lightbulb, // New icon for Light
    Icons.settings_remote, // New icon for SmartTag
    // Add more icons if needed
  ];

  // Constant width and height for each grid item
  static const double gridItemWidth = 150;
  static const double gridItemHeight = 130;

  void navigateToComponentScreen(int index) {
    switch (index) {
      case 0:
        Get.to(AirCondition());
        break;
      case 1:
        Get.to(Vaccum());
        break;
      case 2:
        Get.to(AirPurifier());
        break;
      case 3:
        Get.to(DoorLock());
        break;
      case 4:
        Get.to(Outlet());
        break;
      case 5:
        Get.to(Beedroom_curtain());
        break;
      case 6:
        Get.to(Light()); // Navigate to the Light screen
        break;
      case 7:
        Get.to(SmartTag()); // Navigate to the SmartTag screen
        break;
      // Add more cases for other components if needed
    }
  }

  bool isImageVisible = true;

  void toggleImageVisibility() {
    setState(() {
      isImageVisible = !isImageVisible;
    });
  }

  void toggle_air() {
    setState(() {
      isAir_conditional = !isAir_conditional;
    });
  }

  bool isAir_conditional = true;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    // Defining the Dark Colors
    final themeProvider = Provider.of<ThemeProvider>(context);
    final gradientboxFirst = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.gradientboxFirst
        : color.AppColor.gradientboxFirst;

    final gradientboxSecond = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.gradientboxSecond
        : color.AppColor.gradientboxSecond;

    final favarite_text = themeProvider.isDarkMode
        ? color.AppColor.favarite_text
        : darkcolor.AppColorDark.favarite_text;

    final fav_back = themeProvider.isDarkMode
        ? color.AppColor.fav_back
        : darkcolor.AppColorDark.fav_back;

    final fav_icon = themeProvider.isDarkMode
        ? color.AppColor.fav_icon
        : darkcolor.AppColorDark.fav_icon;
    // Calculate the number of grid items per row based on screen size
    // Calculate the number of grid items per row based on screen size
    int crossAxisCount = currentWidth > 800
        ? 4
        : currentWidth > 600
            ? 3
            : currentWidth > 372
                ? 2
                : 2;

    // Calculate the width of each grid item
    double gridItemWidth =
        (currentWidth - (crossAxisCount - 1) * 10) / crossAxisCount;

    // Calculate the height of each grid item (adjust as needed)
    double gridItemHeight = currentWidth > 372 ? 160 : 160;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Virtual Home",
            style: TextStyle(color: Colors.white),
          ),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.home,
              color: color.AppColor.favarite_icon,
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      // Add the functionality for the plus button here
                      Get.to(Settings());
                    },
                    child: Icon(
                      Icons.add,
                      size: 26.0,
                      color: color.AppColor.favarite_icon,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: PopupMenuButton<String>(
                    icon: Icon(
                      Icons.more_vert,
                      color: color.AppColor.favarite_icon,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                    ),
                    onSelected: (String choice) {
                      // Handle the selected menu option here
                      print("Selected option: $choice");
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem<String>(
                          value: 'option1',
                          child: Text('Edit Favorites'),
                        ),
                        PopupMenuItem<String>(
                          value: 'showstatusinformation',
                          enabled: false, // Make this option disabled
                          child: Text('Show Status Information'),
                        ),
                      ];
                    },
                  ),
                ),
              ],
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.AppColor.gradientSecond.withOpacity(0.5),
                  color.AppColor.gradientSecond.withOpacity(0.9),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child:
                    Container(), // Empty container to apply the backdrop filter
              ),
            ),
          ),
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
                                  gradientboxSecond.withOpacity(0.6),
                                  gradientboxSecond.withOpacity(0.7),
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
                                      color: color.AppColor.favarite_icon_back,
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
                                    color: favarite_text,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Second Box ---------------------- Low Battery
                      GestureDetector(
                        onTap: () {
                          Get.to(Curtains());
                        },
                        child: Container(
                          width:
                              currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                          height: currentWidth > 372 ? 150 : 130,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  gradientboxSecond.withOpacity(0.6),
                                  gradientboxSecond.withOpacity(0.7),
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
                                      color: color.AppColor.low_battery,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.battery_1_bar_sharp,
                                    color: fav_icon,
                                    size: currentWidth > 372 ? 40 : 35,
                                  ),
                                ),
                                Text(
                                  "Low battery on Bedroom Curtain",
                                  style: TextStyle(
                                    fontSize: currentWidth > 372 ? 13 : 10,
                                    color: favarite_text,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
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
                  GestureDetector(
                    onTap: () {
                      Get.to(GoodMoring());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width:
                              currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                          height: 65,
                          margin: EdgeInsets.only(left: 0, bottom: 10, top: 0),
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                gradientboxSecond.withOpacity(0.6),
                                gradientboxSecond.withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
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
                                      width: MediaQuery.of(context).size.width /
                                          5.9,
                                      child: Text(
                                        "Good Moring",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                          color: favarite_text,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 10,
                                  height:
                                      MediaQuery.of(context).size.width / 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: fav_back,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: fav_icon,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:
                              currentWidth > 372 ? currentWidth / 2 - 19 : 150,
                          height: 65,
                          margin: EdgeInsets.only(left: 0, bottom: 10, top: 0),
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                gradientboxSecond.withOpacity(0.6),
                                gradientboxSecond.withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
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
                                      width: MediaQuery.of(context).size.width /
                                          5.9,
                                      child: Text(
                                        "Outgoing",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                          color: favarite_text,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 10,
                                  height:
                                      MediaQuery.of(context).size.width / 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: fav_back,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: fav_icon,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                          gradient: LinearGradient(
                            colors: [
                              gradientboxSecond.withOpacity(0.6),
                              gradientboxSecond.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
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
                                        fontWeight: FontWeight.w700,
                                        fontSize: 11,
                                        color: favarite_text,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: fav_back,
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: fav_icon,
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
                          gradient: LinearGradient(
                            colors: [
                              gradientboxSecond.withOpacity(0.6),
                              gradientboxSecond.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
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
                                        fontWeight: FontWeight.w700,
                                        fontSize: 11,
                                        color: favarite_text,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: fav_back,
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: fav_icon,
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
                  GestureDetector(
                    onTap: () {
                      Get.to(LivingRoom());
                    },
                    child: Container(
                      width: currentWidth,
                      height: 250,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            gradientboxSecond.withOpacity(0.6),
                            gradientboxSecond.withOpacity(0.7),
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
                                  color: color.AppColor.fav_liv,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ),
                              // ------------------ Button --------------
                              Container(
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  color: fav_back,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: GestureDetector(
                                  onTap: toggleImageVisibility,
                                  child: Icon(
                                    Icons.power_settings_new,
                                    size: 19,
                                    color: fav_icon,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Living room",
                              style: TextStyle(color: favarite_text),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 0),
                            child: Text(
                              "Camera",
                              style: TextStyle(color: favarite_text),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 0),
                            child: isImageVisible
                                ? Text(
                                    "on",
                                    style: TextStyle(
                                        color: color.AppColor.fav_on_off),
                                  )
                                : Text("off",
                                    style: TextStyle(
                                        color: color.AppColor.fav_on_off)),
                          ),
                          //
                          isImageVisible
                              ? Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('assets/living.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              : Container(
                                  height: 120,
                                  child: Center(
                                    child: Icon(
                                      Icons.videocam_off,
                                      size: 50,
                                      color: color.AppColor.favarite_icon,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),

                  ///////// Section 4 ----------- Functionalities
                  Padding(
                    padding:
                        EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                    child: Container(
                      width: currentWidth,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: gridItemWidth / gridItemHeight,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigateToComponentScreen(index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    gradientboxSecond.withOpacity(0.6),
                                    gradientboxSecond.withOpacity(0.7),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5, 10),
                                    blurRadius: 10,
                                    color: Colors.red.withOpacity(0.2),
                                  ),
                                ],
                              ),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          livingIcons[index],
                                          color: favarite_text,
                                          size: currentWidth > 372 ? 35 : 33,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: fav_back,
                                          ),
                                          child: Icon(
                                            Icons.power_settings_new,
                                            color: favarite_text,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      livingText[index],
                                      style: TextStyle(
                                        fontSize: currentWidth > 372 ? 14 : 12,
                                        color: favarite_text,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "off",
                                      style: TextStyle(
                                        fontSize: currentWidth > 372 ? 16 : 12,
                                        color: color.AppColor.fav_on_off,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: livingText.length,
                      ),
                    ),
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
