import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MaterialApp(
            useInheritedMediaQuery: true, home: Cities_ui()), // Wrap your app
      ),
    );

class Cities_ui extends StatelessWidget {
  var photos = [
    'https://images.unsplash.com/photo-1587474260584-136574528ed5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1538332576228-eb5b4c4de6f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1544161513-0179fe746fd5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1565475783696-96001eff1b45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1529921879218-f99546d03a9d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80'
  ];
  var cities = [
    'Delhi',
    'Finland',
    'London',
    'Vancouver',
    'New York',
    'Beijing'
  ];

  var countries = ['India', 'Europe', 'UK', 'Canada', 'USA', 'China'];

  var population = [
    'Population: 32 M',
    'Population: 5.5 M',
    'Population: 8.8 M',
    'Population: 2.6 M',
    'Population: 4.2 M',
    'Population: 7.2 M',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Cities Around the World",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: photos.length,
            (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Card(
                color: Colors.orange,
                child: Row(children: [
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width * .4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.network(
                        photos[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 90,
                        width: MediaQuery.of(context).size.width * .5,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Text(
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                  cities[index]),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  countries[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  population[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
