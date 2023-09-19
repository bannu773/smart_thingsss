import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:Arum_Smart_Home/color/colors.dart' as color;

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    // print(themeMode);
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
