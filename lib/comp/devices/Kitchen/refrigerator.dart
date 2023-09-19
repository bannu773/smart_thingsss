import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Refrigerator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Refrigerator(),
    );
  }
}

class Refrigerator extends StatefulWidget {
  const Refrigerator({Key? key}) : super(key: key);

  @override
  State<Refrigerator> createState() => _RefrigeratorState();
}

class _RefrigeratorState extends State<Refrigerator> {
  String selectedSoftFreezeOption = "Soft Freeze";

  void _showSoftFreezeMenu() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Select Mode",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    selectedSoftFreezeOption = "Frozen";
                  });
                  Navigator.pop(context);
                },
                title: Text("Frozen"),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    selectedSoftFreezeOption = "Soft Freeze";
                  });
                  Navigator.pop(context);
                },
                title: Text("Soft Freeze"),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    selectedSoftFreezeOption = "Meat & Fish";
                  });
                  Navigator.pop(context);
                },
                title: Text("Meat & Fish"),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    selectedSoftFreezeOption = "Cheese & Vegatables";
                  });
                  Navigator.pop(context);
                },
                title: Text("Cheese & Vegatables"),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    selectedSoftFreezeOption = "White wine";
                  });
                  Navigator.pop(context);
                },
                title: Text("White wine"),
              ),
            ],
          ),
        );
      },
    );
  }

  bool isSwitched = false;

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
              "Refrigerator",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              "Virtual Home - Living Room",
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
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
                color: Colors.black,
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
                height: 340,
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 9, 0, 138),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 35,
                          padding: EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_box_rounded,
                                    color: Colors.white,
                                    size: 29,
                                  ),
                                  Text(
                                    "Fridge",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "7°C",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 35,
                          padding: EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.add_box_rounded,
                                    color: Colors.white,
                                    size: 29,
                                  ),
                                  Text(
                                    "Freezer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "-22°C",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    // --------------------------------        popup -------------------------------
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(192, 0, 109, 182),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "FlexZone",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  color: Colors.white,
                                ),
                                GestureDetector(
                                  onTap: _showSoftFreezeMenu,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width:
                                              5), // Add some space between icon and text
                                      Text(
                                        selectedSoftFreezeOption,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                          width:
                                              5), // Add some space between text and icon
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    /// ---------------------------------------------- 2 Rows ----------------------------------------
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(192, 0, 109, 182),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width / 2 -
                                      35,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.water_drop_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Power Cool",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      // print(isSwitched);
                                    });
                                  },
                                  activeTrackColor: Colors.lightBlue,
                                  activeColor: Colors.deepPurpleAccent,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(192, 0, 109, 182),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width / 2 -
                                      35,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.water_drop_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Power Cool",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      // print(isSwitched);
                                    });
                                  },
                                  activeTrackColor: Colors.lightBlue,
                                  activeColor: Colors.deepPurpleAccent,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // ------------------------------------ Image -------------------------
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Inside Frdge",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height -
                          450, // Adjust the height as needed
                      child: SingleChildScrollView(
                        child: Image.asset(
                          "assets/fridge.jpg", // Replace with the actual image path
                          fit: BoxFit.fitWidth,
                        ),
                      ),
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
