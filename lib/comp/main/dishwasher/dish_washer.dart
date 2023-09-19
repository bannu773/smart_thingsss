import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';

import '../../../color/colors.dart' as color;
import '../../../color/dark_color.dart' as darkcolor;

import 'package:get/get.dart';
import 'dart:async';
import 'package:provider/provider.dart';

class DishWasher extends StatefulWidget {
  const DishWasher({Key? key}) : super(key: key);

  @override
  State<DishWasher> createState() => _DishWasherState();
}

class _DishWasherState extends State<DishWasher> {
  bool showContainer = false;
  int initialSeconds = 3 * 60 * 60; // 3 hours in seconds
  int? remainingSeconds = 3 * 60 * 60; // Nullable int for remaining seconds
  Timer? timer; // Nullable Timer
  bool timerActive = true;

  String mode = "Auto";
  void _onButtonPressed() {
    setState(() {
      showContainer = !showContainer;
    });
  }

  List<String> itemList = [
    "Rack Selection",
    "Zone Booster",
    "Speed Booster",
    "Hi-Temp wash",
    "Sanitize",
    "Delay Start"
  ];

  void _showPopup(String item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Popup for $item'),
          content: Text('You clicked on $item.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Pop up Sections --------------------
  void _showRackSelectionPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int? selectedOption =
            1; // Add this line to initialize the selectedOption variable

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Rack Selection'),
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      100), // Add this line to set the border radius
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.kitchen_outlined,
                      size: 190,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: const Text('All'),
                          leading: Radio(
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Lower'),
                          leading: Radio(
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showZoneBoosterPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int? selectedOption =
            1; // Add this line to initialize the selectedOption variable

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Rack Selection'),
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      100), // Add this line to set the border radius
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "Applies intensive washing power to the left part of the lower rack"),
                    Icon(
                      Icons.kitchen_outlined,
                      size: 190,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: const Text('On'),
                          leading: Radio(
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Off'),
                          leading: Radio(
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showSpeedBoosterPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int? selectedOption =
            1; // Add this line to initialize the selectedOption variable

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Speed Booster'),
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      100), // Add this line to set the border radius
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Reduces washing time"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: const Text('On'),
                          leading: Radio(
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Off'),
                          leading: Radio(
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showSanitizePopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int? selectedOption =
            1; // Add this line to initialize the selectedOption variable

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Hi-Temp wash'),
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      100), // Add this line to set the border radius
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "The water temperature is increased in the final rinse cycle for high-temperature sanitization"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: const Text('On'),
                          leading: Radio(
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Off'),
                          leading: Radio(
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showDelayStartPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Popup for Delay Start'),
          content: Text('You clicked on Delay Start.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showHiTempWashPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int? selectedOption =
            1; // Add this line to initialize the selectedOption variable

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Hi-Temp wash'),
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      100), // Add this line to set the border radius
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "Raises the main wash temperature to improve cleaning for loads containg tough, baked-on food"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: const Text('On'),
                          leading: Radio(
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Off'),
                          leading: Radio(
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    remainingSeconds = initialSeconds;
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (remainingSeconds! > 0) {
        setState(() {
          remainingSeconds = remainingSeconds! - 1;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel(); // Cancel the timer if it's not null
    super.dispose();
  }

  String formatDuration(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int secs = seconds % 60;

    String hoursStr = hours.toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = secs.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final dish_back = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.dish_back
        : color.AppColor.dish_back;
    final dish_grey = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.dish_grey
        : color.AppColor.dish_grey;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // backgroundColor: Colors.white, // Set background color to white
          elevation: 0.0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dishwasher",
                style: TextStyle(
                    // color: Colors.black,
                    ), // Set text color to black
              ),
              Text(
                "Virtual Home - Kitchen",
                style: TextStyle(
                  // color: Colors.black54,
                  fontSize: 13,
                ),
              )
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0, // Set the elevation to 0
                foregroundColor: Colors.white,
                // Set the button background color to transparent
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                // Handle the back button press
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: PopupMenuButton<String>(
                icon: Icon(
                  Icons.more_vert,
                  // color: Colors.black,
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
                      enabled: false,
                      child: Text('Settings'),
                    ),
                    PopupMenuItem<String>(
                      value: 'option2',
                      enabled: false, // Make this option disabled
                      child: Text('Select a Country/Location'),
                    ),
                    PopupMenuItem<String>(
                      value: 'option3',
                      enabled: false, // Make this option disabled
                      child: Text('Energy Monitor'),
                    ),
                    PopupMenuItem<String>(
                      value: 'option4',
                      enabled: false, // Make this option disabled
                      child: Text('Information'),
                    ),
                  ];
                },
              ),
            ),
          ],
        ),

        /// Body --------------------------
        body: Container(
          width: currentWidth,
          height: currentHeight,
          decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 240, 240, 240),
              ),
          child: SingleChildScrollView(
            // Main Container --------------
            child: Container(
              padding: EdgeInsets.only(top: 0),
              margin: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Container(
                    width: currentWidth,
                    height: showContainer ? 350 : 200,
                    color: themeProvider.isDarkMode
                        ? darkcolor.AppColorDark.DishWasher
                        : color.AppColor.DishWasher,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            mode = "Mode";
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Cycle List"),
                                content: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ExpansionTile(
                                        title: GestureDetector(
                                            onTap: () {
                                              mode = "Auto";
                                            },
                                            child: Text("Auto")),
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Energy",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Time 2hr46min",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Temperature 50C",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Energy Used",
                                                      style: TextStyle(
                                                        // color: Colors.black54,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      // Normal
                                      ExpansionTile(
                                        title: GestureDetector(
                                            onTap: () {
                                              mode = "Normal";
                                            },
                                            child: Text("Normal")),
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Energy",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Time 2hr46min",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Temperature 50C",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Energy Used",
                                                      style: TextStyle(
                                                        // color: Colors.black54,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),

                                      // Heavy ---------------------------
                                      ExpansionTile(
                                        title: GestureDetector(
                                            onTap: () {
                                              mode = "Heavy";
                                            },
                                            child: Text("Heavy")),
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Energy",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Time 2hr46min",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Temperature 50C",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Energy Used",
                                                      style: TextStyle(
                                                        // color: Colors.black54,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      ExpansionTile(
                                        title: GestureDetector(
                                            onTap: () {
                                              mode = "Delicate";
                                            },
                                            child: Text("Delicate")),
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Energy",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Time 2hr46min",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Temperature 50C",
                                                  style: TextStyle(
                                                    // color: Colors.black54,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Energy Used",
                                                      style: TextStyle(
                                                        // color: Colors.black54,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          // Button AlertDialog Box =-------------------
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  mode,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 15),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        showContainer
                            ? Container(
                                width: currentWidth,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 60,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "Washing",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 10),
                                          child: Text(
                                            formatDuration(remainingSeconds!),
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 2,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          child: Text(
                                            "Finish time ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.waves_sharp,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Wash",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 6,
                                            width: currentWidth / 9,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.wallet_sharp,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Rinse",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 6,
                                            width: currentWidth / 9,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.dry_cleaning,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Dry",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 6,
                                            width: currentWidth / 9,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.topic_outlined,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Complete",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              _onButtonPressed();
                                            },
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 20,
                                                  right: 20,
                                                  top: 10,
                                                  bottom: 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                "Cancal",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                top: 10,
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Text(
                                              "Pause",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            // Button Start -------------------------------------------------
                            : Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Center(
                                  child: ElevatedButton(
                                    onPressed: _onButtonPressed,
                                    child: Text(
                                      'Start',
                                      style: TextStyle(
                                          color: color.AppColor.DishWasher,
                                          fontSize: 17),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                          top: 20,
                                          bottom: 20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: itemList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  switch (index) {
                                    case 0:
                                      _showRackSelectionPopup();
                                      break;
                                    case 1:
                                      _showZoneBoosterPopup();
                                      break;
                                    case 2:
                                      _showSpeedBoosterPopup();
                                      break;
                                    case 3:
                                      _showHiTempWashPopup();
                                      break;
                                    case 4:
                                      _showSanitizePopup();
                                      break;
                                    case 5:
                                      _showDelayStartPopup();
                                      break;
                                    default:
                                      break;
                                  }
                                },
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.only(left: 20, top: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(141, 3, 169,
                                        219), // Change color as needed
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        itemList[index],
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Washing Recipe---------------------------
                  Container(
                    width: currentWidth - 25,
                    height: 150,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dish_back,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Washing Recipe",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "We recommend the optimum customized cycles based on the material of your dishes.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Loading Guide ---------------------------
                  Container(
                    width: currentWidth - 25,
                    height: 150,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dish_back,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Loading Guide",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Cups, wine glasses Load glasses onto the support to hold them.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Favarite ---------------

                  Container(
                    width: currentWidth - 25,
                    height: 80,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dish_back,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Favorite",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 registered",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  // Self Clean History -------------------------
                  Container(
                    width: currentWidth - 25,
                    height: 80,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dish_back,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Self Clean history",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: dish_grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "After the last clean, the number of washes",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: dish_grey,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Tablet Counter -----------------------------

                  Container(
                    width: currentWidth - 25,
                    height: 80,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dish_back,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tablet counter",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 tablet(s) left",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  // Self Clean History -------------------------
                  Container(
                    width: currentWidth - 25,
                    height: 130,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dish_back,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HomeCare Wizard",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: dish_grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "you can comprehensively control connected Samsung home appliances. Check information on how to use each product",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: dish_grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7, right: 7),
                    child: Text(
                      "Supported devices may differ depending on your country or model Design and features of actual devices may not be the same as virtual devices",
                      style: TextStyle(color: dish_grey, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
