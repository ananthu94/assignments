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
        children: const [
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/2.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/3.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/4.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/3.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/4.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/2.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ajmi'),
              subtitle: Text('9567000111'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/3.jpg'),
              ),
              trailing: Icon(Icons.phone),
            ),
          )
        ],
      ),
    ));
  }
}
