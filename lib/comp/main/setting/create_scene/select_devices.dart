import 'package:Arum_Smart_Home/comp/main/setting/create_scene/create_scene.dart';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Select_devices extends StatefulWidget {
  const Select_devices({super.key});

  @override
  State<Select_devices> createState() => _Select_devicesState();
}

class _Select_devicesState extends State<Select_devices> {
  List<Map<String, dynamic>> temporaryList = [];
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    List<Map<String, dynamic>> componentList = themeProvider.scene_select;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Text(
            "Add Actions",
            // style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  itemCount:
                      componentList.where((item) => !item["isSelected"]).length,
                  itemBuilder: (context, index) {
                    var filteredList = componentList
                        .where((item) => !item["isSelected"])
                        .toList();
                    // Check if it's the first item in a category
                    bool isFirstItemInCategory = index == 0 ||
                        filteredList[index]["category"] !=
                            filteredList[index - 1]["category"];
                    // print(isFirstItemInCategory);
                    // If it's the first item in a category, disp lay a section header
                    if (isFirstItemInCategory) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              filteredList[index]["category"],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Checkbox(
                              value: temporaryList.any((element) =>
                                  element["name"] ==
                                      filteredList[index]["name"] &&
                                  element["category"] ==
                                      filteredList[index]["category"]),
                              onChanged: (value) {
                                setState(() {
                                  bool ispresent = temporaryList.any(
                                      (element) =>
                                          element["name"] ==
                                              filteredList[index]["name"] &&
                                          element["category"] ==
                                              filteredList[index]["category"]);
                                  if (!ispresent) {
                                    temporaryList.add(filteredList[index]);
                                  } else {
                                    temporaryList.remove(filteredList[index]);
                                  }
                                  // print(temporaryList);
                                });
                              },
                            ),
                            title: Row(
                              children: [
                                Icon(filteredList[index]["icon"]),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      filteredList[index]["name"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      filteredList[index]["category"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                // bool ispresent = temporaryList.any((element) =>
                                //     element["name"] ==
                                //     filteredList[index]["name"]);
                                bool ispresent = temporaryList.any((element) =>
                                    element["name"] ==
                                        filteredList[index]["name"] &&
                                    element["category"] ==
                                        filteredList[index]["category"]);
                                if (!ispresent) {
                                  temporaryList.add(filteredList[index]);
                                } else {
                                  temporaryList.remove(filteredList[index]);
                                }
                                // print(temporaryList);
                              });
                            },
                            tileColor: temporaryList.any((element) =>
                                    element["name"] ==
                                        filteredList[index]["name"] &&
                                    element["category"] ==
                                        filteredList[index]["category"])
                                ? Colors.blue
                                : null,
                          ),
                        ],
                      );
                    } // If it's not the first item in a category, display a regular ListTile
                    return ListTile(
                      leading: Checkbox(
                        value: temporaryList.any((element) =>
                            element["name"] == filteredList[index]["name"] &&
                            element["category"] ==
                                filteredList[index]["category"]),
                        onChanged: (value) {
                          setState(() {
                            // themeProvider.componentList[
                            //         componentList.indexOf(filteredList[index])]
                            //     ["isSelected"] = value;
                            bool ispresent = temporaryList.any((element) =>
                                element["name"] ==
                                    filteredList[index]["name"] &&
                                element["category"] ==
                                    filteredList[index]["category"]);
                            if (!ispresent) {
                              temporaryList.add(filteredList[index]);
                            } else {
                              temporaryList.remove(filteredList[index]);
                            }
                            // print(temporaryList);
                            // temporaryList = List.from(componentList
                            //     .where((item) => item["isSelected"] == true));
                          });
                        },
                      ),
                      title: Row(
                        children: [
                          Icon(filteredList[index]["icon"]),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                filteredList[index]["name"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                filteredList[index]["category"],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          // filteredList[index]["isSelected"] =
                          //     !filteredList[index]["isSelected"];
                          // temporaryList = List.from(componentList
                          //     .where((item) => item["isSelected"] == true));
                          bool ispresent = temporaryList.any((element) =>
                              element["name"] == filteredList[index]["name"] &&
                              element["category"] ==
                                  filteredList[index]["category"]);
                          if (!ispresent) {
                            temporaryList.add(filteredList[index]);
                          } else {
                            temporaryList.remove(filteredList[index]);
                          }
                          // print(temporaryList);
                        });
                      },
                      tileColor: temporaryList.any((element) =>
                              element["name"] == filteredList[index]["name"] &&
                              element["category"] ==
                                  filteredList[index]["category"])
                          ? Colors.blue
                          : null,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Get.back();
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      Colors.transparent, // Set background color to transparent
                  elevation: 0, // Remove button elevation
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(0), // Remove button border
                  ),
                ),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.white, // Set text color
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      themeProvider.scene_select.forEach(
                        (item) {
                          // print(temporaryList);
                          if (temporaryList.any((tempItem) =>
                              tempItem["name"] == item["name"] &&
                              tempItem["category"] == item["category"])) {
                            print(item);
                            item["isSelected"] = true;
                          }
                        },
                      );
                      // themeProvider.setComponentchange(componentList);
                      Provider.of<ThemeProvider>(context, listen: false)
                          .notifyListeners();
                      Get.to(CreateScene());
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      Colors.transparent, // Set background color to transparent
                  elevation: 0, // Remove button elevation
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(0), // Remove button border
                  ),
                ),
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Colors.white, // Set text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
