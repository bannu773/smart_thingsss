import 'package:flutter/material.dart';

class IconGrid extends StatelessWidget {
  final List<IconData> icons;
  final int columns;

  IconGrid({required this.icons, this.columns = 3});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: icons.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        childAspectRatio: 1.0, // Controls the aspect ratio of each icon
      ),
      itemBuilder: (BuildContext context, int index) {
        return IconTile(icon: icons[index]);
      },
    );
  }
}

class IconTile extends StatelessWidget {
  final IconData icon;

  IconTile({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Icon(icon),
    );
  }
}
