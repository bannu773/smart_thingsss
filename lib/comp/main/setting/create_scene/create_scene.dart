import 'package:Arum_Smart_Home/comp/main/air_condition/air_condition.dart';
import 'package:Arum_Smart_Home/comp/main/light.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/add_actions.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/items/Outlet_scene.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/items/air_conditioner_scene.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/items/air_dresser_scene.dart';
import 'package:Arum_Smart_Home/comp/main/setting/create_scene/items/light_scene.dart';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import 'package:Arum_Smart_Home/comp/main/setting/create_scene/curtains_scene.dart';

class CreateScene extends StatefulWidget {
  const CreateScene({super.key});

  @override
  State<CreateScene> createState() => _CreateSceneState();
}

class _CreateSceneState extends State<CreateScene> {
  TextEditingController _sceneNameController = TextEditingController();
  List<Map<String, dynamic>> temporaryList = [];

  @override
  void dispose() {
    _sceneNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    List<Map<String, dynamic>> componentList = themeProvider.scene_select;
    var filteredList =
        componentList.where((item) => item["isSelected"]).toList();
    print(filteredList);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Text(
            "Create scene",
            // style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(),
                child: Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Get.Curtains_scene();
                          Get.to(Airconditioner_scene());
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.star,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 15,
                              right: 15,
                            ),
                            child: Text("Icons"),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      // Input field for scene name
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: TextField(
                            controller: _sceneNameController,
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              hintText: 'Scene Name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Actions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              filteredList.length == 0
                  ? Container()
                  : Container(
                      child: Column(
                        children: filteredList.map((item) {
                          return ListTile(
                            leading: Icon(item["icon"]),
                            title: Text(item["name"]),
                            subtitle: Text(item["category"]),
                          );
                        }).toList(),
                      ),
                    ),
              GestureDetector(
                onTap: () {
                  Get.to(Add_actions());
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      child: Icon(
                        Icons.add,
                        size: 28,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Add what you want to happen when you run this scene",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
