import 'package:cunclt_project/screens/loginscreen.dart';
import 'package:cunclt_project/screens/homescreen.dart';
import 'package:flutter/material.dart';

// import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const Homescreen(),
      routes: {
        Homescreen.id: (context) => const Homescreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
    );
  }
}
