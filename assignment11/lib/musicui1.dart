import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(useInheritedMediaQuery: true, home: Musicui_1()),
    ),
  );
}

class Musicui_1 extends StatefulWidget {
  @override
  State<Musicui_1> createState() => _Musicui_1State();
}

int index = 0;
var images = [
  'assets/images/2022.jpeg',
  'assets/images/70s.jpeg',
  'assets/images/acoustic.jpeg',
  'assets/images/lofi.jpeg',
  'assets/images/movie.jpeg',
  'assets/images/real.jpeg',
  'assets/images/rock and roll.jpeg',
  'assets/images/workout.jpg',
];

class _Musicui_1State extends State<Musicui_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.black),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Playlists',
                    style: GoogleFonts.italiana(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.purple),
                        suffixIconColor: Colors.purple,
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                ),
                SingleChildScrollView(
                  child: SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1),
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover)),
                      );
                    },
                    itemCount: images.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.purple,
          unselectedIconTheme: IconThemeData(color: Colors.white),
          onTap: (selectedindex) {
            setState(() {
              index = selectedindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_circle,
                ),
                label: 'Playlist'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                ),
                label: 'More')
          ]),
    );
  }
}
