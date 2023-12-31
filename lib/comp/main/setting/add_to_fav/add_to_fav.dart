import 'package:Arum_Smart_Home/comp/main/setting/add_to_fav/components.dart';
import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Add_to_fav extends StatefulWidget {
  const Add_to_fav({Key? key}) : super(key: key);

  @override
  State<Add_to_fav> createState() => _Add_to_favState();
}

class _Add_to_favState extends State<Add_to_fav> {
  List<Map<String, dynamic>> temporaryList = [];

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    List<Map<String, dynamic>> componentList = themeProvider.componentList;
    // print(componentList);
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
              'Select items',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Choose items to add to favorites",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
            alignment: AlignmentDirectional.topStart,
            child: Text(
              "Devices",
              style: TextStyle(fontSize: 16),
            ),
          ),
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
                    print(isFirstItemInCategory);
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
                                  filteredList[index]["name"]),
                              onChanged: (value) {
                                setState(() {
                                  // themeProvider.componentList[
                                  //         componentList.indexOf(filteredList[index])]
                                  //     ["isSelected"] = value;
                                  bool ispresent = temporaryList.any(
                                      (element) =>
                                          element["name"] ==
                                          filteredList[index]["name"]);
                                  if (!ispresent) {
                                    temporaryList.add(filteredList[index]);
                                  } else {
                                    temporaryList.remove(filteredList[index]);
                                  }
                                  print(temporaryList);
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
                                    element["name"] ==
                                    filteredList[index]["name"]);
                                if (!ispresent) {
                                  temporaryList.add(filteredList[index]);
                                } else {
                                  temporaryList.remove(filteredList[index]);
                                }
                                print(temporaryList);
                              });
                            },
                            tileColor: temporaryList.any((element) =>
                                    element["name"] ==
                                    filteredList[index]["name"])
                                ? Colors.blue
                                : null,
                          ),
                        ],
                      );
                    } // If it's not the first item in a category, display a regular ListTile
                    return ListTile(
                      leading: Checkbox(
                        value: temporaryList.any((element) =>
                            element["name"] == filteredList[index]["name"]),
                        onChanged: (value) {
                          setState(() {
                            // themeProvider.componentList[
                            //         componentList.indexOf(filteredList[index])]
                            //     ["isSelected"] = value;
                            bool ispresent = temporaryList.any((element) =>
                                element["name"] == filteredList[index]["name"]);
                            if (!ispresent) {
                              temporaryList.add(filteredList[index]);
                            } else {
                              temporaryList.remove(filteredList[index]);
                            }
                            print(temporaryList);
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
                              element["name"] == filteredList[index]["name"]);
                          if (!ispresent) {
                            temporaryList.add(filteredList[index]);
                          } else {
                            temporaryList.remove(filteredList[index]);
                          }
                          print(temporaryList);
                        });
                      },
                      tileColor: temporaryList.any((element) =>
                              element["name"] == filteredList[index]["name"])
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
                    themeProvider.componentList.forEach((item) {
                      item["isSelected"] = false;
                    });
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
                      themeProvider.componentList.forEach(
                        (item) {
                          if (temporaryList.any(
                              (tempItem) => tempItem["name"] == item["name"])) {
                            item["isSelected"] = true;
                          }
                        },
                      );
                      // themeProvider.setComponentchange(componentList);
                      Provider.of<ThemeProvider>(context, listen: false)
                          .notifyListeners();
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
