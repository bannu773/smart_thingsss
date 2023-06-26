import 'package:flutter/material.dart';
import 'package:smart_things/comp/menu.dart';
import '../../color/colors.dart' as color;

class Life extends StatefulWidget {
  const Life({super.key});

  @override
  State<Life> createState() => _LifeState();
}

class _LifeState extends State<Life> {
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
            "Virtual Home",
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
        // Whole Container - ////////////////
        body: Container(
          width: currentWidth,
          height: currentHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.AppColor.gradientFirst.withOpacity(0.8),
              color.AppColor.gradientSecond.withOpacity(0.9),
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
          ),
          child: Column(
            children: [
              // Left Side - ////////////////
              Container(
                padding: EdgeInsets.only(top: 70, left: 10, right: 10),
                child:
                    // Fist container ---------------------///////
                    Container(
                  width: currentWidth - 20,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientboxFirst.withOpacity(0.6),
                          color.AppColor.gradientboxFirst.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: currentWidth - 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Air Care",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Concerned about the air quality in your home? Take control with SmartThings Air",
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 13),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child:
                    // Fist container ---------------------///////
                    Container(
                  width: currentWidth - 20,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientboxFirst.withOpacity(0.6),
                          color.AppColor.gradientboxFirst.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        // Icons ------------------
                        child: Icon(
                          Icons.privacy_tip_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: currentWidth - 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SmartThings home Monotior",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Keep your home sale from instrusions ",
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
