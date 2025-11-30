import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onPressed});
final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child:  Text(title,

        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
