import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue[900],
            body: Column(
              children: [
                Text("Hello, welcome back!"),
                Text("Login to continue"),
                const TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                const TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                TextButton(
                    onPressed: () {
                      print("Forgot clicked!");
                    },
                    child: Text('Forgot password?')),
                ElevatedButton(
                    onPressed: () {
                      print("Login clicked!");
                    },
                    child: Text('Login')),
                const Text("Or Sign in with"),
                ElevatedButton(
                    onPressed: () {
                      print("Login with google clicked!");
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 22,
                          height: 22,
                        ),
                        Text('Login with Google')
                      ],
                    )),
                ElevatedButton(
                    onPressed: () {
                      print("Login with facebook clicked!");
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 22,
                          height: 22,
                        ),
                        Text('Login with Facebook')
                      ],
                    )),
              ],
            )
        )
    );
  }
}
