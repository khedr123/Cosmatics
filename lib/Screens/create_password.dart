import 'package:flutter/material.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/image/Layer_1.png', width: 67, height: 62),
            SizedBox(height: 40,),Text("Create Password")
          ],
        ),
      ),
    );
  }
}
