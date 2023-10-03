import 'package:flutter/material.dart';

class Curtains__scene extends StatefulWidget {
  const Curtains__scene({Key? key});

  @override
  State<Curtains__scene> createState() => _Curtains__sceneState();
}

class _Curtains__sceneState extends State<Curtains__scene> {
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
            "window shade",
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
                    "Preset Position",
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
                    "Shade Level",
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
