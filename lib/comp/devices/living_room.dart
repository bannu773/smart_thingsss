import 'package:flutter/material.dart';
import 'package:smart_things/comp/menu.dart';
import '../../color/colors.dart' as color;

class Livving_room extends StatefulWidget {
  const Livving_room({super.key});

  @override
  State<Livving_room> createState() => _Livving_roomState();
}

class _Livving_roomState extends State<Livving_room> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    var living_icons = [
      Icons.home,
      Icons.lock,
      Icons.light,
      Icons.face_unlock_outlined,
      Icons.curtains,
    ];
    var living_text = [
      "Air Condition",
      "Robot Vaccum",
      "Air Putifier",
      "Face Unlock",
      "Curtains",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Virtual Home ",
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.add,
                size: 26.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: currentWidth,
        height: currentHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.AppColor.gradientFirst.withOpacity(0.8),
            color.AppColor.gradientSecond.withOpacity(0.9),
          ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Container(
            width: currentWidth,
            height: currentHeight,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientboxFirst.withOpacity(0.6),
                          color.AppColor.gradientboxFirst.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 10),
                            blurRadius: 10,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2)),
                      ]),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //////////////// Row -------------------------------------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: currentWidth > 372 ? 40 : 35,
                              height: currentWidth > 372 ? 40 : 35,
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                living_icons[index],
                                color: Colors.black,
                                size: currentWidth > 372 ? 40 : 33,
                              ),
                            ),
                            Container(
                              width: currentWidth > 372 ? 45 : 40,
                              height: currentWidth > 372 ? 45 : 40,
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.power_settings_new,
                                color: Colors.white,
                                size: currentWidth > 372 ? 25 : 20,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          living_text[index],
                          style: TextStyle(
                            fontSize: currentWidth > 372 ? 16 : 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "off",
                          style: TextStyle(
                            fontSize: currentWidth > 372 ? 16 : 12,
                            color: Colors.white30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: living_icons.length,
            ),
          ),
        ),
      ),
    );
  }
}
