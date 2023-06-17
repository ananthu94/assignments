import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        home: Hotel_home(),
        // theme: ThemeData.dark(),
      ),
    ),
  );
}

class Hotel_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.menu),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 320),
            child: Icon(Icons.favorite_border),
          )
        ],
        bottom: AppBar(
          elevation: 0,
          title: Center(child: Text('Type Your Location')),
        ),
      ),
    );
  }
}
