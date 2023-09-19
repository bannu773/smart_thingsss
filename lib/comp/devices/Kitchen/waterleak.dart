import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Water_leak extends StatefulWidget {
  const Water_leak({Key? key});

  @override
  State<Water_leak> createState() => _Water_leakState();
}

class _Water_leakState extends State<Water_leak> {
  int batteryLevel = 36; // Set the initial battery level here

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
      body: Container(
        color: Color.fromARGB(255, 240, 240, 240),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Water sensor",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Dry",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Temperature",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "17°C",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Battery",
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text(
                        "$batteryLevel%", // Display the battery level here
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: LinearProgressIndicator(
                          minHeight: 10,

                          value: batteryLevel /
                              100.0, // Set the progress based on the battery level
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 0, 204, 255)),
                        ),
                      ),
                    ],
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
      home: Water_leak(),
    );
  }
}
