import 'package:demo_project/core/constants/colors.dart';
import 'package:demo_project/presentation/pages/signin_page.dart';
import 'package:demo_project/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/custom_button1.dart';
import '../../core/widgets/custom_button2.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    Icon(Icons.handshake_outlined,
                        size: 50, color: buttonColor),
                    Text(
                      "Snap & Shop",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: buttonColor,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              CustomButtion1(
                name: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SigninPage()),
                  );
                },
              ),
              const SizedBox(height: 20),
              CustomButton2(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignupPage()),
                  );
                },
                name: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
