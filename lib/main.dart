import 'package:cosmatics_app/view/category.dart';
import 'package:cosmatics_app/view/create_password.dart';
import 'package:flutter/material.dart';

import 'features/main/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CategoryView(),
    );
  }
}
