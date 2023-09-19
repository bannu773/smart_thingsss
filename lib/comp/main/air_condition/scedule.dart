import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String selectedAction = 'Turn On'; // Initial selected action

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Action",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Turn On',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Radio<String>(
                  value: 'Turn On',
                  groupValue: selectedAction,
                  onChanged: (value) {
                    setState(() {
                      selectedAction = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Turn Off',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Radio<String>(
                  value: 'Turn Off',
                  groupValue: selectedAction,
                  onChanged: (value) {
                    setState(() {
                      selectedAction = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
