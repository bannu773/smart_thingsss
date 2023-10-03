import 'package:flutter/material.dart';

class Robot_vaccum_scene__scene extends StatefulWidget {
  const Robot_vaccum_scene__scene({Key? key});

  @override
  State<Robot_vaccum_scene__scene> createState() =>
      _Robot_vaccum_scene__sceneState();
}

class _Robot_vaccum_scene__sceneState extends State<Robot_vaccum_scene__scene> {
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
            "Create scene",
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
                    "Recharging",
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
                    "Auto Cleaning",
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
                    "Suction power",
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
            )
          ],
        ),
      ),
    );
  }
}
