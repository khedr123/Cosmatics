import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../core/shared_widgets/app_button.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 40,
          children: [
            SizedBox(height: 40),
            Image.asset('assets/images/Layer_1.png', width: 67, height: 62),
            Text(
              'Verify Code',
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'We just sent a 4-digit verification code to\n +20 1022658997. Enter the code in the box\n               below to continue.',
            ),
            Row(
              children: [
                Text(
                  '    Enter the Number',
                  style: TextStyle(
                    color: Color(0xffD75D72),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Row(
              children: [
                Text('    Didn’t receive a code? '),
                Text('Resend', style: TextStyle(color: Colors.red)),
              ],
            ),
            SizedBox(
              width: 268,
              height: 65,
              child: AppButton(title: 'Done', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
