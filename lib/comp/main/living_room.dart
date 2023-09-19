import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../color/colors.dart' as color;

import 'package:get/get.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  bool isImageVisible = true;

  void toggleImageVisibility() {
    setState(() {
      isImageVisible = !isImageVisible;
    });
  }

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
                "Camera",
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
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("On"),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isImageVisible
                            ? color.AppColor.Camera_on
                            : Colors.black12,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        onTap: toggleImageVisibility,
                        child: Icon(
                          Icons.power_settings_new,
                          color: isImageVisible ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // living room ----------------------
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    isImageVisible
                        ? Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/living.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Container(
                            height: 200,
                            child: Center(
                              child: Icon(
                                Icons.videocam_off,
                                size: 50,
                                color: Colors.black54,
                              ),
                            ),
                          ),

                    // Down Menu ---------------------------------
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.videocam_outlined,
                            size: 30,
                            // color: Colors.black54,
                          ),
                          Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                            // color: Colors.black54,
                          ),
                          Icon(
                            Icons.mic_none,
                            size: 30,
                            // color: Colors.black54,
                          ),
                          Icon(
                            Icons.volume_off,
                            size: 30,
                            // color: Colors.black54,
                          ),
                          Icon(
                            Icons.aspect_ratio,
                            size: 30,
                            // color: Colors.black54,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Down Menu ------------------------------- --
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text("Activty history"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "TODAY",
                          style: TextStyle(
                            // color: Colors.black54,
                            fontSize: 17,
                          ),
                        ),
                        Container(
                          height: 1, // Set the height of the line
                          width: MediaQuery.of(context).size.width /
                              1.5, // Set the width of the line
                          color: Colors.black87, // Set the color of the line
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.sensor_occupied_sharp,
                            // color: Colors.black54,
                          ),
                          Text("Sound detected"),
                          Text("12.02 AM"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 1.6,
                      // color: Colors.black54,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.person_pin_circle_outlined,
                            // color: Colors.black54,
                            size: 32,
                          ),
                          Text("Motion detected"),
                          Text("12.02 AM"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 1.6,
                      // color: Colors.black54,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.sensor_occupied_sharp,
                            // color: Colors.black54,
                          ),
                          Text("Sound detected"),
                          Text("12.02 AM"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 1.6,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.sensor_occupied_sharp,
                      // color: Colors.black54,
                    ),
                    Text("Sound detected"),
                    Text("12.02 AM"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
