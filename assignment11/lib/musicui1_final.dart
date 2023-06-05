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

class _Musicui_1State extends State<Musicui_1> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'Playlists',
              style: GoogleFonts.italiana(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              toolbarHeight: 80,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black87,
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.purple),
                      suffixIconColor: Colors.purple,
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover)),
                ),
              );
            },
            itemCount: images.length,
          )
        ],
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
