import 'package:flutter/material.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

class SocialIcons extends StatelessWidget {
  final String? icon;
  final double? height;
  final double? width;

  final void Function()? press;
  const SocialIcons(
      {super.key, this.icon, this.press, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: context.responsiveWidth(10)),
        padding: EdgeInsets.all(context.responsiveWidth(10)),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: primaryLightColor),
            shape: BoxShape.circle),
        child: Image.asset(
          icon!,
          height: height ?? 20,
          width: width ?? 20,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
