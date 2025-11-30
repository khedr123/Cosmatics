import 'package:flutter/material.dart';

import '../core/shared_widgets/app_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dropdownValue = '+20';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f2f6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/image/login_img.png',
                  height: 180,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),

              // 🧾 Title
              const Text(
                'Login Now',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2f3542),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Please enter the details below to continue',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              // 📞 Phone Number Field
              Row(
                children: [
                  Container(
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        items: const [
                          DropdownMenuItem(value: '+20', child: Text('+20')),
                          DropdownMenuItem(value: '+1', child: Text('+1')),
                          DropdownMenuItem(value: '+44', child: Text('+44')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Your Password',
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: AppButton(title: 'Login', onPressed: () {}),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
