import 'package:flutter/material.dart';

class Airconditioner_scene extends StatefulWidget {
  const Airconditioner_scene({super.key});

  @override
  State<Airconditioner_scene> createState() => _Airconditioner_sceneState();
}

class _Airconditioner_sceneState extends State<Airconditioner_scene> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Radio<bool>(
                          value: true,
                          groupValue: switchValue1,
                          onChanged: (value) {
                            setState(() {
                              switchValue1 = value!;
                            });
                          },
                        ),
                        Text('On'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<bool>(
                          value: false,
                          groupValue: switchValue1,
                          onChanged: (value) {
                            setState(() {
                              switchValue1 = value!;
                            });
                          },
                        ),
                        Text('Off'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
