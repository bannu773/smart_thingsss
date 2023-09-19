import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vaccum extends StatefulWidget {
  const Vaccum({super.key});

  @override
  State<Vaccum> createState() => _VaccumState();
}

class _VaccumState extends State<Vaccum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Robot Vacuum",
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
              ),
            ],
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            // color: Colors.black,
            size: 19,
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                // Handle recharge button tap
              },
              child: Text('Recharge'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: Transform.rotate(
                  angle: 0.785398, // Rotation angle in radians (45 degrees)
                  child: Container(
                    padding: EdgeInsets.all(25),
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // First 2 Icons --------------------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.rotate(
                              angle: 0.785398,
                              child: Icon(
                                Icons.arrow_back,
                                size: 40,
                              ),
                            ),
                            Transform.rotate(
                              angle: -0.785398,
                              child: Icon(
                                Icons.refresh,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                        // Center Button ------------------------
                        Transform.rotate(
                          angle: -0.785398,
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 40,
                                    ),
                                  ),
                                  Text("Auto"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Spot and refresh button -------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.rotate(
                              angle: -0.785398,
                              child: Icon(
                                Icons.refresh_outlined,
                                size: 40,
                              ),
                            ),
                            Transform.rotate(
                                angle: -0.785398,
                                child: Text(
                                  "SPOT",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Pause -----------------------------
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Pause",
                style: TextStyle(fontSize: 30),
              ),
            ),
            // battery --------------------------------
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.battery_5_bar_sharp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Battery",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.published_with_changes,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Suction power",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.schedule,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Schedule",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.published_with_changes,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Suction power",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
