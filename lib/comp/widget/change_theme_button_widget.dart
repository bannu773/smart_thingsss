import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Arum_Smart_Home/color/colors.dart' as color;

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return DropdownButton<ThemeMode>(
      value: themeProvider.themeMode,
      items: [
        DropdownMenuItem(
          value: ThemeMode.light,
          child: Text('Light'),
        ),
        DropdownMenuItem(
          value: ThemeMode.dark,
          child: Text('Dark'),
        ),
        DropdownMenuItem(
          value: ThemeMode.system,
          child: Text('System'),
        ),
      ],
      onChanged: (ThemeMode? newValue) {
        if (newValue != null) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.setThemeMode(newValue);
        }
      },
    );
  }
}
