import 'package:flutter/material.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';
import 'package:food_delivery/signup/components/signup_form.dart';
import 'package:food_delivery/signup/components/social.dart';

class SignupTopImage extends StatelessWidget {
  const SignupTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: context.responsiveHeight(30),
          ),
          Text(
            "SIGN UP",
            style: TextStyle(fontSize: context.responsiveWidth(24)),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Image.asset(
            "assets/auth/signup.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
        ],
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignupTopImage(),
            const Row(
              children: [
                Spacer(),
                Expanded(flex: 8, child: SignupForm()),
                Spacer()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 1,
                  width: context.maxWidth() * 0.3,
                  color: primaryLightColor,
                ),
                const Text(
                  "OR",
                  style: TextStyle(color: primaryColor),
                ),
                Container(
                  height: 1,
                  width: context.maxWidth() * 0.3,
                  color: primaryLightColor,
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const SocialSignup()
          ],
        ),
      ),
    );
  }
}
