import 'package:flutter/material.dart';

class Dryer__scene extends StatefulWidget {
  const Dryer__scene({Key? key});

  @override
  State<Dryer__scene> createState() => _Dryer__sceneState();
}

class _Dryer__sceneState extends State<Dryer__scene> {
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
                    "Start cycle",
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
                    "pause cycle",
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
                    "Cancel cycle",
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
