import 'package:Arum_Smart_Home/comp/main/setting/add_to_fav/add_to_fav.dart';
import 'package:Arum_Smart_Home/comp/signin/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/create_scene.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/items/air_dresser_scene.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Settings(),
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isAddDeviceEnabled = false;
  bool isCreateSceneEnabled = true; // Set this to true to enable "Create Scene"
  bool isCreateLightGroupEnabled =
      false; // Set this to false to disable "Create Lightgroup"
  bool isCreateCameraGroupEnabled =
      false; // Set this to false to disable "Create Camera Group"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Row(
          children: [
            SizedBox(width: 5),
            Text(
              'Add',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Container(
        child: Container(
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            color: Color.fromARGB(183, 238, 238, 238),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Add_to_fav());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 10),
                          child: Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Add to favorites",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //// -----------------------------Second Box ------------
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      AbsorbPointer(
                        absorbing: !isAddDeviceEnabled,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20, top: 10, right: 20, bottom: 10),
                              child: Icon(
                                Icons.widgets,
                                color: isAddDeviceEnabled
                                    ? Colors.black
                                    : Colors.grey,
                                size: 30,
                              ),
                            ),
                            Text(
                              "Add device",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: isAddDeviceEnabled
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, top: 10, right: 20, bottom: 10),
                            child: Icon(
                              Icons.document_scanner,
                              color: const Color.fromARGB(255, 114, 33, 243),
                              size: 30,
                            ),
                          ),
                          Text(
                            "Add Services",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // -------------------------- Invite Member --------------
                AbsorbPointer(
                  absorbing: !isAddDeviceEnabled,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 10),
                          child: Icon(
                            Icons.group,
                            color: Colors.orange,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Invite Members",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color:
                                isAddDeviceEnabled ? Colors.black : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // --- ---------------------- Create Scene ------------------
                AbsorbPointer(
                  absorbing: !isCreateSceneEnabled,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(CreateScene());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: Icon(
                                  Icons.sunny,
                                  color: isCreateSceneEnabled
                                      ? Colors.orangeAccent
                                      : Colors.grey,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Create Scene",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: isCreateSceneEnabled
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: Color.fromARGB(255, 0, 153, 255),
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Create Routine",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: isCreateSceneEnabled
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        // --- ---------------------- Create Lightgroup ------------------
                        AbsorbPointer(
                          absorbing: !isCreateLightGroupEnabled,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: Color.fromARGB(255, 0, 153, 255),
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Create Lightgroup",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: isCreateLightGroupEnabled
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        // --- ---------------------- Create Camera Group ------------------
                        AbsorbPointer(
                          absorbing: !isCreateCameraGroupEnabled,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: Color.fromARGB(255, 0, 153, 255),
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Create Camera Group",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: isCreateCameraGroupEnabled
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
