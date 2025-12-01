import 'package:flutter/material.dart';
import 'package:newproject/Screens/login_screen.dart';

import 'Screens/create_password.dart';
import 'Screens/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CreatePassword(),
    );
  }
}
