import 'package:flutter/material.dart';

class ComponentProvider extends ChangeNotifier {
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

  void updateComponentSelection(int index, bool isSelected) {
    componentList[index]["isSelected"] = isSelected;
    notifyListeners();
  }
}
