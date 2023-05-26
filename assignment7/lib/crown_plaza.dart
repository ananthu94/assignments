import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Crown_plaza(),
  ));
}

class Crown_plaza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 400,
                child: Image.network(
                    'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
              ),
              Positioned(
                left: 25,
                top: 280,
                child: Container(
                  child: Text(
                    'Crown Plaza\nKochi, Kerala',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 340,
                child: Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), backgroundColor: Colors.grey),
                      onPressed: () {},
                      child: Text(
                        '8.4/85 reviews',
                        style: TextStyle(fontSize: 10, color: Colors.white70),
                      )),
                ),
              ),
              Positioned(
                top: 340,
                left: 520,
                child: Container(
                  child: Icon(
                    Icons.audiotrack,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                ),
              ),
              Positioned(left: 520, child: Text('200')),
              Positioned(
                top: 40,
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(' 8 km to LuluMall')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
