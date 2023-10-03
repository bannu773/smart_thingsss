import 'package:Arum_Smart_Home/comp/main/setting/create_scene/items/air_dresser_scene.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:Arum_Smart_Home/color/colors.dart' as color;

class ThemeProvider extends ChangeNotifier {
  List<Map<String, dynamic>> componentList = [
    {
      "icon": Icons.settings_remote,
      "components": "SmartTag()",
      "name": "SmartTag",
      "category": "On the go",
      "isSelected": true,
      "floatsel": true,
    },
    {
      "icon": Icons.account_box,
      "components": "AirPurifier()",
      "name": "AirPurifier",
      "category": "Living room",
      "isSelected": false,
      "floatsel": false,
    },

    {
      "icon": Icons.kitchen,
      "components": "AirCondition()",
      "name": "AirCondition",
      "category": "Living room",
      "isSelected": false,
      "floatsel": false,
    },
    {
      "icon": Icons.face,
      "components": "Outlet()",
      "name": "Outlet",
      "category": "Kitchen",
      "isSelected": false,
      "floatsel": false,
    },
    {
      "icon": Icons.kitchen,
      "components": "Refrigerator()",
      "name": "Refrigerator",
      "category": "Kitchen",
      "isSelected": false,
      "floatsel": false,
    },
    // {
    //   "icon" :
    //   "components": "DishWasher()",
    //   "name": "Dishwasher",
    //   "category": "Kitchen",
    //   "isSelected": false

    // },
    {
      "icon": Icons.water_damage_sharp,
      "components": "Water_leak()",
      "name": "Water leak sensor",
      "category": "Kitchen",
      "isSelected": false,
      "floatsel": false,
    },
    {
      "icon": Icons.lightbulb,
      "components": "Light()",
      "name": "Light",
      "category": "Kitchen",
      "isSelected": false,
      "floatsel": false,
    },
    // {
    // "icon" :
    //   "components": "",
    //   "name": "Laundry room",
    //   "category": "Laundry",
    //   "isSelected": false

    // },
    // {
    // "icon" :
    //   "components": "",
    //   "name": "Dryer",
    //   "category": "Laundry",
    //   "isSelected": false

    // },
    // {
    // "icon" :
    //   "components": "",
    //   "name": "Washer",
    //   "category": "Laundry",
    //   "isSelected": false

    // },
    {
      "icon": Icons.curtains,
      "components": "Beedroom_curtain()",
      "name": "Bedroom",
      "category": "Bedroom",
      "isSelected": false,
      "floatsel": false,
    },
    // {
    // "icon" :
    //   "components": "",
    //   "name": "AirDresser",
    //   "category": "Bedroom",
    //   "isSelected": false

    // },
    // {
    // "icon" :
    //   "components": "",
    //   "name": "Light",
    //   "category": "Bedroom",
    //   "isSelected": false

    // },
    {
      "icon": Icons.face,
      "components": "Outlet()",
      "name": "Outlet",
      "category": "Bedroom",
      "isSelected": false,
      "floatsel": false,
    },
    // {
    // "icon" :
    //   "components": "",
    //   "name": "Curtain",
    //   "category": "Bedroom",
    //   "isSelected": false
    // },
  ];
  List<Map<String, dynamic>> scene_select = [
    {
      "name": "AirDresser",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Bedroom",
      "isSelected": false,
      "components": AirDresser__scene(),
    },
    {
      "name": "Curtains",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Bedroom",
      "isSelected": false,
    },
    {
      "name": "Outlet",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Bedroom",
      "isSelected": false,
    },
    {
      "name": "Light",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Bedroom",
      "isSelected": false,
    },
    {
      "name": "Refrigerator",
      "icon": Icons.barcode_reader,
      "subtext": "off",
      "category": "Kitchen",
      "isSelected": false,
    },
    {
      "name": "Dishwasher",
      "icon": Icons.barcode_reader,
      "subtext": "off",
      "category": "Kitchen",
      "isSelected": false,
    },
    {
      "name": "Outlet",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Kitchen",
      "isSelected": false,
    },
    {
      "name": "Light",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Kitchen",
      "isSelected": false,
    },
    {
      "name": "Washer",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Laundry_room",
      "isSelected": false,
    },
    {
      "name": "Dryer",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Laundry_room",
      "isSelected": false,
    },
    {
      "name": "Air Conditioner",
      "icon": Icons.barcode_reader,
      "subtext": "comfort Cooling",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Robot vaccum",
      "icon": Icons.barcode_reader,
      "subtext": "Pause",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Air Purifier",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Light",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Door lock",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Camera",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Outlet",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Living room",
      "isSelected": false,
    },
    {
      "name": "Curtain",
      "icon": Icons.barcode_reader,
      "subtext": "on",
      "category": "Living room",
      "isSelected": false,
    },
  ];

  void setComponentchange(List<Map<String, dynamic>> comp) {
    componentList = comp;
    // print(componentList);
    notifyListeners();
  }

  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  ThemeData getThemeData() {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      if (brightness == Brightness.dark) {
        return MyThemes.darkTheme;
      } else {
        return MyThemes.lightTheme;
      }
    } else if (themeMode == ThemeMode.dark) {
      return MyThemes.darkTheme;
    } else {
      return MyThemes.lightTheme;
    }
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade800,
    primaryColor: color.AppColor.gradientFirst,
    primaryColorDark: color.AppColor.gradientFirst,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
    appBarTheme: AppBarTheme(
      backgroundColor:
          Colors.grey.shade900, // Define the background color for dark theme
      foregroundColor:
          Colors.white70, // Define the text/icon color for dark theme
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: color.AppColor.gradientFirst,
    primaryColorDark: color.AppColor.gradientFirst,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
    appBarTheme: AppBarTheme(
      backgroundColor:
          Colors.white, // Define the background color for light theme
      foregroundColor:
          Colors.black, // Define the text/icon color for light theme
    ),
  );
}
