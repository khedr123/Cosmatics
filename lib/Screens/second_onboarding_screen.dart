import 'package:flutter/material.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/Vector123.png', width: 284, height: 260),
            Image.asset('assets/image/Frame 102.png'),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.pinkAccent,
              ),
              child: IconButton(
                color: Colors.white,

                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
