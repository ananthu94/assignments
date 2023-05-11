import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true, home: FirstSample()), // Wrap your app
    ),
  );
}

class FirstSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/1.jpg.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tivi',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 55,
                    ),
                  ),
                  Text(
                    'dey',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
