import 'package:flutter/material.dart';
import 'beedroom_curtain.dart';
import 'history_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Curtains(),
    );
  }
}

class Curtains extends StatefulWidget {
  @override
  _CurtainsState createState() => _CurtainsState();
}

class _CurtainsState extends State<Curtains> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    Beedroom_curtain(),
    HistoryTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Curtain',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
