import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AirPurifier extends StatefulWidget {
  const AirPurifier({Key? key}) : super(key: key);

  @override
  State<AirPurifier> createState() => _AirPurifierState();
}

class _AirPurifierState extends State<AirPurifier> {
  String selectedOption = 'Comfort Cooling';

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
              "Air purifier",
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 90, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.power_settings_new),
                  ),
                  // Add spacing between the icon and dropdown
                  DropdownButton<String>(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    value: selectedOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue!;
                      });
                    },
                    style: TextStyle(
                      color: Color.fromARGB(
                          255, 0, 119, 255), // Text color of the selected item
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w700, // Font size of the selected item
                    ),
                    dropdownColor: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    items: <String>[
                      'Comfort Cooling',
                      'Cool',
                      'Dry',
                      'Purify',
                      'Heat',
                      'Cool,Purify',
                      'Dry,Purify',
                      'Heat,Purify'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            // -------------------------------------- Indoor ----------------------------
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Indoor"),
                              content: Container(
                                height: 600,
                                child: Column(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("PM10"),
                                              Text(
                                                "Good",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Close"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text("indoor"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "PM10",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(
                          Icons.call_split_outlined,
                          color: Colors.blue,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "9",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "ug/m^3",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Good",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "PM10",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(
                          Icons.call_split_outlined,
                          color: Colors.blue,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "9",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "ug/m^3",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Good",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "PM10",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(
                          Icons.call_split_outlined,
                          color: Colors.blue,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "9",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "ug/m^3",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Good",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
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
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Options",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 7, right: 7),
              child: Text(
                "Supported devices may differ depending on your country or model Design and features of actual devices may not be the same as virtual devices",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
