import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Add_to_fav extends StatefulWidget {
  const Add_to_fav({super.key});

  @override
  State<Add_to_fav> createState() => _Add_to_favState();
}

class _Add_to_favState extends State<Add_to_fav> {
  List<Map<String, dynamic>> componentList = [
    {"name": "Kitchen", "category": "Kitchen", "isSelected": false},
    {"name": "Outlet", "category": "Kitchen", "isSelected": false},
    {"name": "Refrigerator", "category": "Kitchen", "isSelected": false},
    {"name": "Dishwasher", "category": "Kitchen", "isSelected": false},
    {"name": "Water leak sensor", "category": "Kitchen", "isSelected": false},
    {"name": "Light", "category": "Kitchen", "isSelected": false},
    {"name": "Laundry room", "category": "Laundry", "isSelected": false},
    {"name": "Dryer", "category": "Laundry", "isSelected": false},
    {"name": "Washer", "category": "Laundry", "isSelected": false},
    {"name": "Bedroom", "category": "Bedroom", "isSelected": false},
    {"name": "AirDresser", "category": "Bedroom", "isSelected": false},
    {"name": "Light", "category": "Bedroom", "isSelected": false},
    {"name": "Outlet", "category": "Bedroom", "isSelected": false},
    {"name": "Curtain", "category": "Bedroom", "isSelected": false},
  ];

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
              'Select items',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: componentList.length,
        itemBuilder: (context, index) {
          // Check if it's the first item in a category
          bool isFirstItemInCategory = index == 0 ||
              componentList[index]["category"] !=
                  componentList[index - 1]["category"];

          // If it's the first item in a category, display a section header
          if (isFirstItemInCategory) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    componentList[index]["category"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            );
          }

          // If it's not the first item in a category, display a regular ListTile
          return ListTile(
            leading: Checkbox(
              value: componentList[index]["isSelected"],
              onChanged: (value) {
                setState(() {
                  componentList[index]["isSelected"] = value;
                });
              },
            ),
            title: Text(componentList[index]["name"]),
            onTap: () {
              setState(() {
                componentList[index]["isSelected"] =
                    !componentList[index]["isSelected"];
              });
            },
            tileColor: componentList[index]["isSelected"] ? Colors.blue : null,
          );
        },
      ),
    );
  }
}
