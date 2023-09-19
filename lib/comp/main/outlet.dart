import 'package:flutter/material.dart';

class Outlet extends StatefulWidget {
  const Outlet({Key? key}) : super(key: key);

  @override
  State<Outlet> createState() => _OutletState();
}

class _OutletState extends State<Outlet> {
  bool isImageVisible = true;

  void toggleImageVisibility() {
    setState(() {
      isImageVisible = !isImageVisible;
    });
  }

  bool _switchValue = false;
  double powerLevel = 0.5; // Example power level (0 to 1)

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
              "Outlet",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Virtual Home - Living Room",
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
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
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("On"),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isImageVisible ? Colors.blue : Colors.black12,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        onTap: toggleImageVisibility,
                        child: Icon(
                          Icons.power_settings_new,
                          color: isImageVisible ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Timer",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Example: After 1 hour turn on or off",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Power on",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Example: Every day, 6:00 PM",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Power off",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Example: Weekends, 10:00 PM",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Power Level",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        double maxWidth = constraints.maxWidth;

                        return Stack(
                          children: [
                            Transform.rotate(
                              angle: -1.5708,
                              child: Container(
                                width: maxWidth,
                                height: 230,
                                child: CustomPaint(
                                  painter: PowerMeterPainter(powerLevel),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 170,
                              alignment: AlignmentDirectional.bottomCenter,
                              child: Text(
                                "${(powerLevel * 100).toStringAsFixed(1)}W",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            )
                          ],
                        );
                      },
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

class PowerMeterPainter extends CustomPainter {
  final double powerLevel;

  PowerMeterPainter(this.powerLevel);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 3, size.height / 2); // Centered
    final radius = size.height / 2;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -1.5708,
      3.0 * powerLevel,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(PowerMeterPainter oldDelegate) {
    return oldDelegate.powerLevel != powerLevel;
  }
}

void main() {
  runApp(MaterialApp(
    home: Outlet(),
  ));
}
