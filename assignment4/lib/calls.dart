import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          home: Whatsappui_calls()), // Wrap your app
    ),
  );
}

class Whatsappui_calls extends StatelessWidget {
  var names = [
    'MOM',
    'BRO',
    'Anwer',
    'Sam',
    'WIFE',
    'RAHUL',
    'ANU',
    'DAD',
    'SARA',
    'Bro',
    'Rahul',
    'Subin'
  ];

  var photo = [
    'assets/icons/grapes.png',
    'assets/icons/babydog.png',
    'assets/icons/donut.png',
    'assets/icons/easter.png',
    'assets/icons/grapes.png',
    'assets/icons/babydog.png',
    'assets/icons/donut.png',
    'assets/icons/duckicon.png',
    'assets/icons/logingirl.png',
    'assets/icons/babydog.png',
    'assets/icons/donut.png',
    'assets/icons/grapes.png',
  ];

  var arrowicons = [
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_downward,
      size: 18,
      color: Colors.red,
    ),
    Icon(
      Icons.arrow_downward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_downward,
      size: 18,
      color: Colors.red,
    ),
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_downward,
      size: 18,
      color: Colors.green,
    ),
    Icon(
      Icons.arrow_downward,
      size: 18,
      color: Colors.red,
    ),
    Icon(
      Icons.arrow_outward,
      size: 18,
      color: Colors.green,
    ),
  ];

  var time = [
    'Today, 12:25',
    'Yesterday, 11:56',
    'May3, 09:56',
    'May2, 13:43',
    'March 10, 09:43',
    'March 8, 11:43',
    'April 2, 16:43',
    'April 1, 13:25',
    '4/3/23, 12:32',
    '4/3/23, 14:23',
    '4/3/23, 17:40',
    '2/2/23, 10:10'
  ];

  var callicons = [
    Icon(Icons.phone, color: Colors.green),
    Icon(Icons.videocam, color: Colors.green),
    Icon(Icons.videocam, color: Colors.green),
    Icon(Icons.phone, color: Colors.green),
    Icon(Icons.videocam, color: Colors.green),
    Icon(Icons.phone, color: Colors.green),
    Icon(Icons.phone, color: Colors.green),
    Icon(Icons.phone, color: Colors.green),
    Icon(Icons.videocam, color: Colors.green),
    Icon(Icons.phone, color: Colors.green),
    Icon(Icons.videocam, color: Colors.green),
    Icon(Icons.phone, color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.phone_forwarded),
        ),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(201, 10, 132, 79),
          title: const Text(
            'WhatsApp',
          ),
          actions: [
            Row(
              children: const [
                Icon(Icons.camera_alt_outlined),
                SizedBox(width: 25),
                Icon(Icons.search),
                SizedBox(width: 25),
                Icon(Icons.more_vert_rounded),
                SizedBox(
                  width: 5,
                )
              ],
            )
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(names[index]),
                subtitle: Row(
                  children: [
                    arrowicons[index],
                    Text(time[index]),
                  ],
                ),
                leading: Image.asset(photo[index]),
                trailing: callicons[index]);
          },
          itemCount: names.length,
        ),
      ),
    );
  }
}
