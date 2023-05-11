import 'login.dart';
import 'package:flutter/material.dart';


class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _header(),
            _input(),
            _button(context),
          ],
        ),
      ),
    );
  }
}

_header() {
  return Center(
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 150, bottom: 20),
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Create an Account, its free',
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
        )
      ],
    ),
  );
}

_input() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 10,
      right: 10,
    ),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Email ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                prefixIcon: Icon(Icons.person)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                prefixIcon: Icon(Icons.visibility_off),
                suffixIcon: Icon(Icons.visibility_off)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                prefixIcon: Icon(Icons.visibility_off),
                suffixIcon: Icon(Icons.visibility_off)),
          ),
        )
      ],
    ),
  );
}

_button(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: StadiumBorder(),
                padding: EdgeInsets.all(25)),
            onPressed: () {},
            child: Text('Login'),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login()));
          },
          child: const Text(
            'Do you have an account? Login',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    ),
  );
}
