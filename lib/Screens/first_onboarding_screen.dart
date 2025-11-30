import 'package:flutter/material.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Skip', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/Vector.png', width: 284, height: 260),
            Image.asset('assets/image/Frame 101.png'),
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
