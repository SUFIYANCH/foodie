import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';
import 'package:food_delivery/welcome/components/loginandsignupbtn.dart';
import 'package:food_delivery/welcome/components/welcome_img.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.responsiveHeight(40),
            ),
            const WelcomeImg(),
            const Row(children: [
              Spacer(),
              Expanded(flex: 8, child: LoginAndSignupBtn()),
              Spacer(),
            ])
          ],
        ),
      ),
    );
  }
}
