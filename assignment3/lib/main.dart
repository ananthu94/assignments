import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MaterialApp(
          useInheritedMediaQuery: true, home: Assignment3()), // Wrap your app
    ),
  );
}

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/2.jpg'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 25),
                  Icon(Icons.message),
                  SizedBox(width: 25),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Arun'),
              subtitle: Text('9561234562'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/3.jpg'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 25),
                  Icon(Icons.message),
                  SizedBox(width: 25),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Manu'),
              subtitle: Text('956123888'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/4.jpg'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 25),
                  Icon(Icons.message),
                  SizedBox(width: 25),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Sam'),
              subtitle: Text('9589578111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/3.jpg'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 25),
                  Icon(Icons.message),
                  SizedBox(width: 25),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Anu'),
              subtitle: Text('8961234562'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/4.jpg'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 25),
                  Icon(Icons.message),
                  SizedBox(width: 25),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Gopika'),
              subtitle: Text('9561895761'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/2.jpg'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 25),
                  Icon(Icons.message),
                  SizedBox(width: 25),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Card(
              child: ListTile(
            title: Text('Vinu'),
            subtitle: Text('8926670001'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/3.jpg'),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 25),
                Icon(Icons.message),
                SizedBox(width: 25),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          )),
          // )
        ],
      ),
    ));
  }
}
