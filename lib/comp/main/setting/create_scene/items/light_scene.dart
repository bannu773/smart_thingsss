import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../color/colors.dart' as color;

class Light_Scene extends StatefulWidget {
  const Light_Scene({Key? key}) : super(key: key);

  @override
  State<Light_Scene> createState() => _Light_SceneState();
}

class _Light_SceneState extends State<Light_Scene> {
  bool isImageVisible = true;

  void toggleImageVisibility() {
    setState(() {
      isImageVisible = !isImageVisible;
    });
  }

  double brightnessLevel = 0.5;

  void updateBrightnessLevel(double value) {
    setState(() {
      brightnessLevel = value;
    });
  }

  bool _switchValue = false;
  double powerLevel = 1; // Example power level (0 to 1)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Light",
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
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
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
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Timer",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Example: After 1 hour turn on or off",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Power on",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Example: Every day, 6:00 PM",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Power off",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Example: Weekends, 10:00 PM",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text("Dimmer"),
                        ),
                        Container(
                          child: Text(
                            "${(brightnessLevel * 100).toStringAsFixed(0)} %",
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
            ],
          ),
        ),
      ),
    );
  }
}
