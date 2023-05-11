import 'package:flutter/material.dart';
import 'package:assignment2/login.dart';
import 'package:assignment2/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MaterialApp(
          useInheritedMediaQuery: true, home: Assignment2()), // Wrap your app
    ),
  );
}

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _header(),
            _icon(),
            _buttons(context),
          ],
        ),
      ),
    );
  }
}

_header() {
  return Column(
    children: const [
      Padding(
        padding: EdgeInsets.only(top: 130),
        child: Text(
          'Hello There!',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: Text(
          'Automatic identity verification which enable you to verify your identity',
          style: TextStyle(fontSize: 11),
        ),
      ),
    ],
  );
}

_icon() {
  return const Padding(
    padding: EdgeInsets.only(top: 40, bottom: 40),
    child: Icon(
      Icons.computer,
      size: 200,
    ),
  );
}

_buttons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(25)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: const StadiumBorder(),
              padding: const EdgeInsets.all(25)),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Signup()));
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 15),
          ),
        )
      ],
    ),
  );
}
