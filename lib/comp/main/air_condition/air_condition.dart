import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Arum_Smart_Home/comp/main/air_condition/scedule.dart';

class AirCondition extends StatefulWidget {
  const AirCondition({Key? key}) : super(key: key);

  @override
  State<AirCondition> createState() => _AirConditionState();
}

class _AirConditionState extends State<AirCondition> {
  String selectedOption = 'Comfort Cooling'; // Initial selected option

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
              "Air Conditioner",
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
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.power_settings_new),
                    ),
                    // Add spacing between the icon and dropdown
                    Container(
                      width: MediaQuery.of(context).size.width - 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DropdownButton<String>(
                            value: selectedOption,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedOption = newValue!;
                              });
                            },
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 119,
                                  255), // Text color of the selected item
                              fontSize: 16,
                              fontWeight: FontWeight
                                  .w700, // Font size of the selected item
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
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "20",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "o",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "C",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(
                    //   width: MediaQuery.of(context).size.width / 4 - 10,
                    //   height: 100,
                    //   padding: EdgeInsets.only(
                    //     left: 10,
                    //     right: 10,
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Column(
                    //         children: [
                    //           Text(
                    //             "Indoor",
                    //             style: TextStyle(
                    //               fontWeight: FontWeight.w600,
                    //             ),
                    //           ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       "20",
                    //       style: TextStyle(
                    //         fontSize: 25,
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //     ),
                    //     Container(
                    //       padding: EdgeInsets.only(top: 3),
                    //       child: Text(
                    //         "o",
                    //         style: TextStyle(fontSize: 10),
                    //       ),
                    //     ),
                    //     Container(
                    //       padding: EdgeInsets.only(top: 5),
                    //       child: Text(
                    //         "C",
                    //         style: TextStyle(),
                    //       ),
                    //     )
                    //   ],
                    // )
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Indoor",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "o",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "C",
                                  style: TextStyle(),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Container(
                      height: 80,
                      width: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Outdoor",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "30",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "o",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "C",
                                      style: TextStyle(),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Container(
                      height: 80,
                      width: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Air purity level",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "BAD",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 21),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Container(
                      height: 80,
                      width: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Humidity",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 25),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.flip_camera_android_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Vent",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      Text(
                        "None",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w200,
                        ),
                      )
                    ],
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.flip_camera_android_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Fan Speed",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      Text(
                        "Auto",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w200,
                        ),
                      )
                    ],
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.flip_camera_android_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Wild direction",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      Text(
                        "Center",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w200,
                        ),
                      )
                    ],
                  )
                ]),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.flip_camera_android_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Wind free",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "oof",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.flip_camera_android_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "AI Comfort cooling",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "off",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.flip_camera_android_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Good Sleeping",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "off",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.flip_camera_android_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Energy monitor",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "Center",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Schedule());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.flip_camera_android_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Schedule",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "Center",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.flip_camera_android_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Options",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "OFF",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
