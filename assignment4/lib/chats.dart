import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          home: Whatsappui_chats()), // Wrap your app
    ),
  );
}

class Whatsappui_chats extends StatelessWidget {
  var names = [
    'Programmer',
    'Hacker',
    'Cera',
    'Dona',
    'Elvin',
    'Anu',
    'Beena',
    'Sam',
    'Bro',
    'Rahul',
    'Anwer',
    'Anish',
  ];

  var photo = [
    'assets/icons/grapes.png',
    'assets/icons/babydog.png',
    'assets/icons/donut.png',
    'assets/icons/duckicon.png',
    'assets/icons/easter.png',
    'assets/icons/grapes.png',
    'assets/icons/babydog.png',
    'assets/icons/donut.png',
    'assets/icons/duckicon.png',
    'assets/icons/logingirl.png',
    'assets/icons/babydog.png',
    'assets/icons/grapes.png'
  ];

  var message = [
    'Hi,its programmer,its been a while we met. Are you free on tuesday.',
    'Hello there.',
    'How are you ?',
    'Are you free !',
    "Sir,I'm Elvin, happy to be part of your team. Will try to full fill my needs regarding the company.",
    'Meet me @ 3:30',
    'Hello',
    'Metting @ 09:30',
    'Call me when you are free.Urgent!! ',
    'HELLO',
    'Urgent Text!',
    'Attached the file',
  ];

  var time = [
    '12:25',
    '11:56',
    '09:56',
    '01:43',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    '5/3/23',
    '4/3/23',
    '4/3/23',
    '4/3/23',
    '2/2/23'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: const Icon(Icons.message),
        ),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.teal,
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
              subtitle: Text(message[index]),
              leading: Image.asset(photo[index]),
              trailing: Text(time[index]),
            );
          },
          itemCount: names.length,
        ),
      ),
    );
  }
}
