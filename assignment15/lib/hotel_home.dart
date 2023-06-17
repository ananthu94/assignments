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
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.blue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.menu), Icon(Icons.favorite_border)],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 22),
                      child: Text(
                        'Type Your Location',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Idukki,Kochi...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                    )
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(150)),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Icon(Icons.hotel_rounded),
                        ),
                        Text('Hotel')
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Icon(Icons.restaurant),
                        ),
                        Text('Restaurant')
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.yellow[900]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Icon(Icons.local_cafe),
                        ),
                        Text('Cafe')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Opacity(
                  opacity: 0.6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Container(
                      width: 370,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80'),
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                        ),
                        Icon(
                          Icons.star_half_outlined,
                          color: Colors.yellow[900],
                        ),
                      ],
                    )),
                Positioned(
                    right: 10,
                    bottom: 10,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.yellow[900]),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('\$50'),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                'Crown Plaza,Kochi ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              ' KOCHI,KERALA ',
              style: TextStyle(color: Colors.black54),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Text(
                    '(220 reviews)',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
