import 'package:flutter/material.dart';
import 'package:assignment2/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
          padding: EdgeInsets.only(top: 220, bottom: 20),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Welcome back! Login with your credentials',
          style: TextStyle(fontSize: 15, color: Colors.black54),
        )
      ],
    ),
  );
}

_input() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Email ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                prefixIcon: Icon(Icons.person)),
          ),
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              ),
              prefixIcon: Icon(Icons.visibility_off),
              suffixIcon: Icon(Icons.visibility_off)),
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
          onPressed: () { Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Signup()));},
          child: const Text(
            'Do you have an account? Sign Up',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    ),
  );
}
