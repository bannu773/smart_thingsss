import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Arum_Smart_Home/comp/devices/Kitchen/refrigerator.dart';
import 'package:Arum_Smart_Home/comp/devices/Kitchen/waterleak.dart';
import 'package:Arum_Smart_Home/comp/main/air_condition/air_condition.dart';
import 'package:Arum_Smart_Home/comp/main/air_purifier.dart';
import 'package:Arum_Smart_Home/comp/main/curtain/beedroom_curtain.dart';
import 'package:Arum_Smart_Home/comp/main/light.dart';
import 'package:Arum_Smart_Home/comp/main/outlet.dart';
import '../../color/colors.dart' as color;

class Kitchen extends StatelessWidget {
  final List<String> kitchenText = [
    "Refrigerator",
    "Curtain",
    "Light",
    "Air Purifier",
    "Outlet",
    "Water leak sensor",
  ];

  final List<IconData> kitchenIcons = [
    Icons.poll_rounded,
    Icons.curtains, // Change this to the desired icon for Kitchen Curtain
    Icons.lightbulb, // Change this to the desired icon for Light
    Icons.air, // Change this to the desired icon for Air Purifier
    Icons.power_sharp, // Change this to the desired icon for Outlet
    Icons.water_damage_sharp,
  ];

  void navigateToComponentScreen(int index) {
    switch (index) {
      case 0: // Kitchen Curtain
        Get.to(() => Refrigerator());
        break;
      case 1:
        Get.to(() => Beedroom_curtain());
        break;
      case 2:
        Get.to(() => Light());
        break;
      case 3:
        Get.to(() => AirPurifier());
        break;
      case 4:
        Get.to(() => Outlet());
        break;
      case 5:
        Get.to(() => Water_leak());
        break;
      // Add more cases for other components if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    int crossAxisCount = 2;

    if (currentWidth <= 372) {
      crossAxisCount = 2; // Set the crossAxisCount to 1 for small screens
    } else if (currentWidth > 600 && currentWidth <= 900) {
      crossAxisCount = 4;
    } else if (currentWidth > 900) {
      crossAxisCount = 5;
    }

    // Calculate the width of each grid item
    double gridItemWidth =
        (currentWidth - (crossAxisCount - 1) * 10) / crossAxisCount;

    // Calculate the height of each grid item
    double gridItemHeight = currentWidth > 372 ? 160 : 160;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: currentWidth,
        height: currentHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.blue,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: currentWidth,
            child: GridView.builder(
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
                          color.AppColor.gradientboxFirst.withOpacity(0.6),
                          color.AppColor.gradientboxFirst.withOpacity(0.7),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                kitchenIcons[index],
                                color: Colors.white,
                                size: currentWidth > 372 ? 35 : 33,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black54,
                                ),
                                child: Icon(
                                  Icons.power_settings_new_sharp,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            kitchenText[index],
                            style: TextStyle(
                              fontSize: currentWidth > 372 ? 13 : 12,
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
                );
              },
              itemCount: kitchenText.length,
            ),
          ),
        ),
      ),
    );
  }
}
