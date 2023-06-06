import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(useInheritedMediaQuery: true, home: Musicui_2()),
    ),
  );
}

class Musicui_2 extends StatefulWidget {
  const Musicui_2({super.key});

  @override
  State<Musicui_2> createState() => _Musicui_2State();
}

class _Musicui_2State extends State<Musicui_2> {
  int index = 0;
  List detailedlist = [
    [
      'assets/images/2022.jpeg',
      'assets/images/70s.jpeg',
      'assets/images/acoustic.jpeg',
      'assets/images/lofi.jpeg',
      'assets/images/movie.jpeg',
      'assets/images/real.jpeg',
      'assets/images/rock and roll.jpeg',
      'assets/images/workout.jpg',
    ],
    [
      'assets/images/5.jpeg',
      'assets/images/2.jpeg',
      'assets/images/3.jpeg',
      'assets/images/4.jpeg',
      'assets/images/1.webp',
      'assets/images/6.jpeg',
      'assets/images/7.jpeg',
      'assets/images/4.jpeg',
    ],
    [
      'Send My Love',
      'Hero',
      'Unholy',
      'Lift Me Up',
      'Depression',
      "I'm Good",
      'Lift Me Up',
      'Unholy',
    ],
    [
      'Adele',
      'Taylor Swift',
      'Sam Smith',
      'Rihanna',
      'Dax',
      'David Guetta',
      'Rihanna',
      'Kim Petras'
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Center(
                child: Text(
              'Musify',
              style: GoogleFonts.italiana(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            )),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                'Suggested Playlists',
                style: GoogleFonts.aladin(
                    color: Colors.blueGrey,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .22,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(detailedlist[0][index]))),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 35),
                  child: Text(
                    'Recommended for you',
                    style: GoogleFonts.aladin(
                        color: Colors.blueGrey,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .6,
                  child: ListView.builder(
                    itemCount: detailedlist[0].length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 30),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8,
                                      spreadRadius: 5,
                                      color: Colors.white60,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(detailedlist[1][index]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                detailedlist[2][index],
                                style: GoogleFonts.aladin(
                                    color: Colors.purple,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 5),
                                child: Text(
                                  detailedlist[3][index],
                                  style: GoogleFonts.aladin(
                                      color: Colors.amber,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.star_border_outlined,
                                    color: Colors.purple),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 30),
                                  child: Icon(
                                    Icons.download_outlined,
                                    color: Colors.purple,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            );
          }))
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
