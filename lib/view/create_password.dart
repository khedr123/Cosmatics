import 'package:cosmatics_app/core/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../core/shared_widgets/app_button.dart';

class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.asset('assets/images/Layer_1.png', width: 67, height: 62),
              SizedBox(height: 40),
              Text("Create Password"),
              SizedBox(height: 40),
              Text(
                "The password should have at least\n         6 characters. ",
              ),
              SizedBox(height: 80),
              CustomTextfield(
                labelText: 'Password',
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 15,),
              CustomTextfield(
                labelText: 'Confirm Password',
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 16),

              SizedBox(height: 70),
              SizedBox(
                width: 268,
                height: 65,
                child: AppButton(title: 'Confirm', onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
