import 'package:flutter/material.dart';
import 'sign_in/sign_in_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gatenavi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen()
    );
  }
}
