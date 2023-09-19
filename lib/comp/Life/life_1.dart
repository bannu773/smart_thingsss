import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:Arum_Smart_Home/comp/menu.dart';
import 'package:provider/provider.dart';
import '../../color/colors.dart' as color;
import '../../color/dark_color.dart' as darkcolor;

class Lifee extends StatefulWidget {
  const Lifee({Key? key}) : super(key: key);

  @override
  State<Lifee> createState() => _LifeeState();
}

class _LifeeState extends State<Lifee> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final gradientboxSecond = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.gradientboxSecond
        : color.AppColor.gradientboxSecond;
    var life_icons = [
      Icons.email_outlined,
      Icons.privacy_tip_outlined,
      Icons.charging_station,
    ];
    var life_text = ["Air Care", "SmartThings home Monotior", "Energy"];
    var life_par = [
      "Concerned about the air quality in your home? Take control with SmartThings Air",
      "Keep your home sale from instrusions",
      "Want to know how much electricity your applicances are using? Try SmartThings Energy"
    ];
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Virtual Home",
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
            gradient: LinearGradient(
              colors: [
                color.AppColor.gradientFirst.withOpacity(0.8),
                color.AppColor.gradientSecond.withOpacity(0.9),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: (currentWidth - 20) / 120,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Container(
                  width: currentWidth - 20,
                  height: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        gradientboxSecond.withOpacity(0.6),
                        gradientboxSecond.withOpacity(0.7),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(
                          life_icons[index],
                          // color: Colors.white,
                        ),
                      ),
                      Container(
                        width: currentWidth - 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              life_text[index],
                              style: TextStyle(
                                // color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              life_par[index],
                              style: TextStyle(
                                // color: Colors.white38,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: life_icons.length,
          ),
        ),
      ),
    );
  }
}
