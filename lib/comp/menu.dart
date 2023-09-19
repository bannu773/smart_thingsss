import 'package:Arum_Smart_Home/comp/widget/change_theme_button_widget.dart';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

import '../color/colors.dart' as color;
import '../color/dark_color.dart' as darkcolor;

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final menu_back = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.menu_back
        : color.AppColor.menu_back;
    var iconss = [
      Icons.home,
      Icons.menu,
      Icons.keyboard_voice_outlined,
      Icons.science_rounded
    ];
    int crossAxisCount = currentWidth > 800
        ? 4
        : currentWidth > 600
            ? 3
            : currentWidth > 372
                ? 2
                : 2;
    double gridItemWidth =
        (currentWidth - (crossAxisCount - 1) * 10) / crossAxisCount;

    // Calculate the height of each grid item (adjust as needed)
    double gridItemHeight = currentWidth > 372 ? 160 : 160;
    var iconstext = ["Android Auto", "Companion", "Voice assistant", "Labs"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Arum Smart Homes",
          style: TextStyle(
            // color: Colors.black54,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.settings_outlined,
                size: 26.0,
                // color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: currentWidth,
        height: currentHeight,
        decoration: BoxDecoration(
            // color: Color.fromARGB(255, 245, 245, 245),
            ),
        padding: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Container(
            // Whole Body Colum ---------------------
            child: Column(
              children: [
                // Explore  --------------------------------------- ////////////
                Container(
                  width: currentWidth,
                  height: 105,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: menu_back,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // Column Start ------------------------------- /////////////////
                  child: Column(
                    children: [
                      // Row for Image and  Text on Left -------------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: currentWidth - 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                                Text(
                                    "Find out how to get the most from SmartThings"),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/alien.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Supported devices ------------------------------
                Container(
                  width: currentWidth,
                  height: 105,
                  padding: EdgeInsets.all(14),
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: menu_back,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // Column Start ------------------------------- /////////////////
                  child: Column(
                    children: [
                      // Row for Image and  Text on Left -------------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: currentWidth - 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    "Supported devices",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                                Text(
                                    "Find out which devices work with Smarthings"),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/supported.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                // Container(
                //   width: currentWidth,
                //   height: 250,
                //   child: GridView.builder(
                //       shrinkWrap: true,
                //       physics: NeverScrollableScrollPhysics(),
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 3,
                //         mainAxisSpacing: 10,
                //         crossAxisSpacing: 10,
                //         childAspectRatio: gridItemWidth / gridItemHeight,
                //       ),
                //       itemBuilder: (context, index) {
                //         return Container(
                //           height: 60, // Set the height you desire
                //           child: Column(
                //             children: [
                //               Padding(
                //                 padding:
                //                     const EdgeInsets.only(left: 10, right: 10),
                //                 child: Container(
                //                   width: 60,
                //                   height: 60,
                //                   child: Icon(iconss[4]),
                //                   decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(50),
                //                     color: Color.fromARGB(31, 139, 139, 139),
                //                   ),
                //                 ),
                //               ),
                //               Text(iconstext[index]),
                //             ],
                //           ),
                //         );
                //       }),
                // ),
                Container(
                  height: 250,
                  width: currentWidth,
                  decoration: BoxDecoration(
                    color: menu_back,
                  ),
                  child: GridView.count(
                    crossAxisCount: 3, // Number of columns
                    mainAxisSpacing: 0, // Vertical spacing
                    crossAxisSpacing: 0, // Horizontal spacing
                    children: List.generate(4, (index) {
                      return Container(
                        height: 60, // Set the height you desire
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                width: 60,
                                height: 60,
                                child: Icon(iconss[index]),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(31, 139, 139, 139),
                                ),
                              ),
                            ),
                            Text(iconstext[index]),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                // First 2 boxes for history and notifications -- //////
                Container(
                  width: currentWidth,
                  height: 180,
                  decoration: BoxDecoration(
                    color: menu_back,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Icon(Icons.schedule_outlined),
                          ),
                          Text(
                            "History",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ],
                      ),
                      Container(
                        width: currentWidth,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.schedule_outlined),
                            ),
                            Container(
                              width: currentWidth / 1.3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    themeProvider.isDarkMode ? "Drak" : "Light",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  ChangeThemeButtonWidget(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Icon(Icons.notifications),
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Second 2 Boxes for
                Container(
                  width: currentWidth,
                  height: 100,
                  decoration: BoxDecoration(
                    color: menu_back,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Icon(Icons.help_outline_outlined),
                          ),
                          Text(
                            "How to use",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Icon(Icons.campaign),
                          ),
                          Text(
                            "Notices",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: currentWidth,
                  height: 50,
                  decoration: BoxDecoration(
                    color: menu_back,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(Icons.help_outline_outlined),
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
