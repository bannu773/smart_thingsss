import "package:flutter/material.dart";

import '../color/colors.dart' as color;

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
    var iconss = [
      Icons.home,
      Icons.menu,
      Icons.keyboard_voice_outlined,
      Icons.science_rounded
    ];
    var iconstext = ["Android Auto", "Companion", "Voice assistant", "Labs"];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Smart Things",
          style: TextStyle(
            color: Colors.black54,
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
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: currentWidth,
        height: currentHeight,
        decoration: BoxDecoration(
          color: color.AppColor.Menu_color,
        ),
        padding: EdgeInsets.only(top: 65),
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
                    color: Colors.white,
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
                    color: Colors.white,
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
                // Container(
                //   width: currentWidth,
                //   height: 200,
                //   color: Colors.white,
                //   margin: EdgeInsets.only(
                //     top: 15,
                //   ),
                //   child: Column(
                //     children: [
                //       Padding(padding: EdgeInsets.only(top: 20)),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           Container(
                //             width: 60,
                //             height: 60,
                //             child: Icon(Icons.analytics),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(50),
                //               color: Colors.black,
                //             ),
                //           ),
                //           Container(
                //             width: 60,
                //             height: 60,
                //             child: Icon(Icons.menu),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(50),
                //               color: Colors.black,
                //             ),
                //           ),
                //           Container(
                //             width: 60,
                //             height: 60,
                //             child: Icon(
                //               Icons.keyboard_voice_outlined,
                //             ),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(50),
                //               color: Colors.black,
                //             ),
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: 20,
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           Container(
                //             width: 60,
                //             height: 60,
                //             child: Icon(Icons.science_rounded),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(50),
                //               color: Colors.black,
                //             ),
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: currentWidth,
                  height: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Container(
                                child: Icon(iconss[index]),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black12,
                              ),
                            ),
                          ),
                          Text(iconstext[index]),
                        ],
                      );
                    },
                    itemCount: 4,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                // First 2 boxes for history and notifications -- //////
                Container(
                  width: currentWidth,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                    color: Colors.white,
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
                    color: Colors.white,
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
