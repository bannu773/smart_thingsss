import 'package:flutter/material.dart';
import 'package:smart_things/comp/devices/living_room.dart';
import 'package:smart_things/comp/menu.dart';

class Devices extends StatefulWidget {
  const Devices({super.key});

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Livving_room(),
    );
  }
}
