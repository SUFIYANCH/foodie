import 'package:flutter/material.dart';
import 'package:food_delivery/home/restaurant_details.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: restaurantAvailable(context),
    );
  }
}

Widget restaurantAvailable(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: context.responsiveHeight(30)),
    height: context.maxHeight(),
    width: context.maxWidth(),
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
    child: Column(children: [
      Padding(
        padding: EdgeInsets.only(
            top: context.responsiveWidth(18),
            right: context.responsiveWidth(18),
            left: context.responsiveWidth(18)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Restaurants Near You",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: context.responsiveWidth(22)),
          ),
          IconButton(
            icon: Icon(Icons.search, size: context.responsiveWidth(26)),
            color: Colors.white,
            onPressed: () {},
          ),
        ]),
      ),
      Expanded(
          child: ListView.builder(
        itemCount: restaurantsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: context.responsiveWidth(10),
                horizontal: context.responsiveWidth(18)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RestauranDetails(index: index),
                    ));
              },
              child: Material(
                  elevation: 3,
                  borderRadius:
                      BorderRadius.circular(context.responsiveWidth(18)),
                  child: Container(
                    height: context.maxHeight() / 2.5,
                    width: context.maxWidth() / 1.1,
                    child: Column(
                      children: [
                        Container(
                          height: context.maxHeight() / 4,
                          width: context.maxWidth() / 1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    context.responsiveWidth(18),
                                  ),
                                  topRight: Radius.circular(
                                    context.responsiveWidth(18),
                                  )),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      restaurantsList[index].imgurl),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: context.maxHeight() / 12,
                          width: context.maxWidth() / 1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                restaurantsList[index].title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: context.responsiveWidth(20)),
                              ),
                              Container(
                                height: context.maxHeight() / 25,
                                width: context.maxWidth() / 7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        context.responsiveWidth(10)),
                                    color: Colors.green),
                                alignment: Alignment.center,
                                child: Text(
                                  restaurantsList[index].rating,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: context.maxWidth() / 1.2,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  restaurantsList[index].locations,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: context.responsiveWidth(13)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: context.responsiveWidth(8)),
                                  child: Text(
                                    restaurantsList[index].price,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: context.responsiveWidth(15)),
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
                  )),
            ),
          );
        },
      ))
    ]),
  );
}
