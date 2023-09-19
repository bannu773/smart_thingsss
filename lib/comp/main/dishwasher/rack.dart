import 'package:flutter/material.dart';

void _showRackSelectionPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      int? selectedOption =
          1; // Add this line to initialize the selectedOption variable

      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Text('Rack Selection'),
            content: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    100), // Add this line to set the border radius
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.kitchen_outlined,
                    size: 190,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Option 1'),
                        leading: Radio(
                          value: 1,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Option 2'),
                        leading: Radio(
                          value: 2,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
  );
}
