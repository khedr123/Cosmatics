import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(width: 200, height: 200, 'assets/images/Layer_1.png'),

          ],
        ),
      ),
    );
  }
}
