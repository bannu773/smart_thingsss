import 'package:flutter/material.dart';

class Refrigerator__scene extends StatefulWidget {
  const Refrigerator__scene({Key? key});

  @override
  State<Refrigerator__scene> createState() => _Refrigerator__sceneState();
}

class _Refrigerator__sceneState extends State<Refrigerator__scene> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Text(
            "Refrigerator",
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Power Cool",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Switch(
                  value: switchValue1,
                  onChanged: (value) {
                    setState(() {
                      switchValue1 = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Power Freeze",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Switch(
                  value: switchValue1,
                  onChanged: (value) {
                    setState(() {
                      switchValue1 = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
