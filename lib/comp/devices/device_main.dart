import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Arum_Smart_Home/comp/devices/bedroom.dart';
import 'package:Arum_Smart_Home/comp/devices/kitchen.dart';
import 'package:Arum_Smart_Home/comp/devices/living_room.dart';
import 'package:Arum_Smart_Home/comp/menu.dart';

class Devices extends StatefulWidget {
  const Devices({super.key});

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  List<String> componentNames = [
    'Living Room',
    'Kitchen',
    'Bed Room',
    // Add more component names here if needed
  ];

  PageController _pageController = PageController();
  int _currentPageIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void onComponentChanged(String? newValue) {
    int newIndex = componentNames.indexOf(newValue!);
    _pageController.animateToPage(
      newIndex,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  Widget getComponentScreen(int index) {
    switch (componentNames[index]) {
      case 'Living Room':
        return Livving_room();
      case 'Kitchen':
        return Kitchen();
      case 'Bed Room':
        return BedRoom();
      // Add more cases for other component names if needed
      default:
        return Livving_room(); // Return a default component screen if the component name is not recognized
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: componentNames[_currentPageIndex],
              items: componentNames.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Colors
                          .white, // Set text color to black for non-selected values
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
              onChanged: onComponentChanged,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.white, // Set arrow color to white
              ),
              style: TextStyle(
                color: Colors
                    .white, // Set text color to white for the selected value
                fontWeight: FontWeight.w600,
              ),
              dropdownColor: Colors.black, // Set dropdown background color
              underline: Container(), // Remove the default underline
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.home,
            color: Colors.white,
            size: 25,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return getComponentScreen(index);
        },
        itemCount: componentNames.length,
      ),
    );
  }
}
