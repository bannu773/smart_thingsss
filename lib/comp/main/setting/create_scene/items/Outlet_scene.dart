import 'package:flutter/material.dart';

class Outlet__scene extends StatefulWidget {
  const Outlet__scene({Key? key});

  @override
  State<Outlet__scene> createState() => _Outlet__sceneState();
}

class _Outlet__sceneState extends State<Outlet__scene> {
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
        padding: EdgeInsets.all(20),
        child: Column(
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
      ),
    );
  }
}
