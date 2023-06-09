import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(useInheritedMediaQuery: true, home: Grid_assignment()),
    ),
  );
}

var colors = [
  Colors.blue[300],
  Colors.orange,
  Colors.green,
  Colors.pink,
  Colors.red,
  Colors.blue[600],
  Colors.purple[200],
  Colors.teal,
  Colors.yellow[700],
  Colors.orange[900],
  Colors.pink[400],
  Colors.lightGreen,
];
var icons = [
  Icons.home,
  Icons.add_alert,
  Icons.camera_alt_sharp,
  Icons.stars_rounded,
  Icons.wifi_off,
  Icons.book,
  Icons.phone,
  Icons.mail,
  Icons.map,
  Icons.width_full_rounded,
  Icons.mic_off,
  Icons.note_add,
];

class Grid_assignment extends StatelessWidget {
  const Grid_assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.5,
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30),
          children: List.generate(
            12,
            (index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors[index],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 2,
                        spreadRadius: 3,
                        offset: Offset(2, 2))
                  ]),
              child: ListTile(
                title: Text(
                  'Heart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Shaker',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  icons[index],
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
