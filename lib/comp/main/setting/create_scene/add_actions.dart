import 'package:Arum_Smart_Home/comp/main/setting/create_scene/select_devices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Add_actions extends StatefulWidget {
  const Add_actions({super.key});

  @override
  State<Add_actions> createState() => _Add_actionsState();
}

class _Add_actionsState extends State<Add_actions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Text(
            "Add Actions",
            // style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 130,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(Select_devices());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.power_settings_new,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Control Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Text(
                          "Example: Turn on the light",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.location_on,
                      size: 29,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Change the location's mode",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      Text(
                        "Example: Change to away",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w200,
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
