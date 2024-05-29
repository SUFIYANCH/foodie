import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';
import 'package:food_delivery/login/components/login_form.dart';

class LoginTopImage extends StatelessWidget {
  const LoginTopImage({
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
            "LOGIN",
            style: TextStyle(fontSize: context.responsiveWidth(24)),
          ),
          Image.asset(
            "assets/auth/delivery.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginTopImage(),
            Row(
              children: [
                Spacer(),
                Expanded(flex: 8, child: LoginForm()),
                Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
