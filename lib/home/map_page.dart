import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.responsiveWidth(10)),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withOpacity(0.8),
            const Color.fromARGB(255, 75, 69, 164).withOpacity(0.6),
            const Color.fromARGB(255, 121, 112, 159).withOpacity(0.4),
            const Color.fromARGB(255, 70, 53, 165).withOpacity(0.2),
            const Color(0xFF6F35A5).withOpacity(0.1),
            const Color(0xFF6F35A5).withOpacity(0.05),
            const Color(0xFF6F35A5).withOpacity(0.025),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Map",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.black),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: context.responsiveWidth(10),
              vertical: context.responsiveHeight(10)),
          child: Column(
            children: [
              Text(
                "Based on your location,\nhere are the nearest hotels",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
