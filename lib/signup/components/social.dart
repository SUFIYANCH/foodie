import 'package:flutter/material.dart';
import 'package:food_delivery/signup/components/social_icon.dart';

class SocialSignup extends StatelessWidget {
  const SocialSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcons(
              icon: "assets/auth/facebook.png",
              press: () {},
            ),
            SocialIcons(
              icon: "assets/auth/twitter.png",
              height: 25,
              width: 25,
              press: () {},
            ),
            SocialIcons(
              icon: "assets/auth/google.png",
              press: () {},
            ),
          ],
        )
      ],
    );
  }
}
