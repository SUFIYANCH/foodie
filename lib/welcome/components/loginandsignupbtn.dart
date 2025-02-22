import 'package:flutter/material.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/login/login_screen.dart';
import 'package:food_delivery/signup/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: "login_btn",
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Text("Login".toUpperCase(),
                    style: const TextStyle(color: Colors.white)))),
        const SizedBox(
          height: defaultPadding,
        ),
        Hero(
            tag: "signup_btn",
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryLightColor,
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: Text(
                  "Sign Up".toUpperCase(),
                  style: const TextStyle(color: Colors.black),
                ))),
      ],
    );
  }
}
