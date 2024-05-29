import 'package:flutter/material.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

class WelcomeImg extends StatelessWidget {
  const WelcomeImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: defaultPadding * 3,
        ),
        Text(
          "Welcome to Foodie".toUpperCase(),
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: context.responsiveWidth(24)),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Image.asset(
          "assets/auth/foodlogo.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: defaultPadding * 2,
        ),
      ],
    );
  }
}
