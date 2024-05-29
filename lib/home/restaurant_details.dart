import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

class RestauranDetails extends StatelessWidget {
  const RestauranDetails({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: context.responsiveHeight(20),
                vertical: context.responsiveHeight(2)),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Order Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: context.responsiveWidth(20)),
                )),
          )),
      body: MainScreen(index: index),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: context.responsiveHeight(50)),
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
        child: SingleChildScrollView(
          child: Column(children: [
            TopImg(index: index),
            Rating(index: index),
            FoodDescription(index: index),
            Menu(
              index: index,
            )
          ]),
        ));
  }
}

class TopImg extends StatelessWidget {
  const TopImg({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.maxHeight() * 0.3,
      width: context.maxWidth(),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(context.responsiveWidth(30)),
              bottomRight: Radius.circular(context.responsiveWidth(30))),
          image: DecorationImage(
              image: NetworkImage(restaurantsList[index].imgurl),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            top: context.responsiveHeight(10),
            left: context.responsiveWidth(10),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: primaryColor,
                  size: context.responsiveWidth(28),
                )),
          ),
          Positioned(
            top: context.responsiveHeight(10),
            right: context.responsiveWidth(10),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.favorite,
                  color: primaryColor,
                  size: context.responsiveWidth(28),
                )),
          ),
          Positioned(
            bottom: context.responsiveHeight(20),
            left: context.responsiveWidth(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurantsList[index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: context.responsiveWidth(20),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  restaurantsList[index].locations,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: context.responsiveWidth(15),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: context.responsiveHeight(10),
          left: context.responsiveHeight(20),
          right: context.responsiveHeight(20)),
      height: context.maxHeight() * 0.1,
      width: context.maxWidth(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(restaurantsList[index].rating,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(18),
                      fontWeight: FontWeight.w500)),
              Text("Rating",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(14),
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(restaurantsList[index].price,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(18),
                      fontWeight: FontWeight.w500)),
              Text("Delivery Time: 30 min",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(14),
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }
}

class FoodDescription extends StatefulWidget {
  const FoodDescription({super.key, required this.index});
  final int index;

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
  bool showFullText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: context.responsiveHeight(10),
        left: context.responsiveHeight(20),
        right: context.responsiveHeight(20),
      ),
      width: context.maxWidth(),
      child: Expanded(
          child: Column(
        children: [
          showFullText
              ? Text(restaurantsList[widget.index].description,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(15),
                      fontWeight: FontWeight.w500))
              : Text(restaurantsList[widget.index].description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(15),
                      fontWeight: FontWeight.w500)),
          buildButton()
        ],
      )),
    );
  }

  Widget buildButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            showFullText = !showFullText;
          });
        },
        child: Text(showFullText ? "Show less" : "Show more"));
  }
}

class Menu extends StatefulWidget {
  final int index;
  const Menu({super.key, required this.index});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late List<bool> onclick;
  @override
  void initState() {
    onclick = List.generate(5, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: context.maxHeight() * 0.06,
          width: context.maxWidth(),
          padding: EdgeInsets.symmetric(
            horizontal: context.responsiveWidth(25),
          ),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(context.responsiveWidth(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Menu",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: context.responsiveWidth(20),
                    fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Text(
                "View all",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: context.responsiveWidth(15),
                    fontWeight: FontWeight.w500),
              ),
              const Icon(Icons.keyboard_arrow_right_rounded)
            ],
          ),
        ),
        for (int i = 0; i < 5; i++)
          Container(
            height: context.maxHeight() * 0.06,
            width: context.maxWidth(),
            margin:
                EdgeInsets.symmetric(horizontal: context.responsiveWidth(10)),
            padding: EdgeInsets.symmetric(
              horizontal: context.responsiveWidth(15),
            ),
            decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.01),
                borderRadius:
                    BorderRadius.circular(context.responsiveWidth(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  restaurant1List[i].title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: context.responsiveWidth(18),
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      "₹${restaurant1List[i].price}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: context.responsiveWidth(16),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: context.responsiveWidth(10),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            onclick[i] = !onclick[i];
                          });
                        },
                        icon: onclick[i]
                            ? const Icon(
                                Icons.check_box_outlined,
                                color: Colors.green,
                              )
                            : const Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.black,
                              ))
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
