import 'package:flutter/material.dart';
import 'package:assignment13/homepage.dart';
import 'package:assignment13/detailedpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
      routes: {
        'detailedpage': (context) => Detailedpage(),
      'homepage':(context) =>  Home(),  
      },
      
    ),
  );
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 60, right: 60),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 60),
              child: Container(
                  height: 180,
                  width: double.infinity,
                  child:
                      Image(image: AssetImage('assests/icons/maldives.png'))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 120),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Text('Login'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 210, top: 20, bottom: 20),
              child: Text('-Or-'),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.blue[800]),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Login With FaceBook'),
                      Icon(FontAwesomeIcons.facebook)
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Login With Twiter'),
                        Icon(FontAwesomeIcons.twitter)
                      ],
                    ),
                  )),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.red),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Login With Google'),
                      Icon(FontAwesomeIcons.google)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
