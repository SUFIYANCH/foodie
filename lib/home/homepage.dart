import 'package:flutter/material.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.maxHeight(),
      width: context.maxWidth(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 83, 69, 164),
              // const Color.fromARGB(255, 66, 53, 165).withOpacity(0.8),
              const Color.fromARGB(255, 75, 69, 165).withOpacity(0.6),
              const Color.fromARGB(255, 121, 112, 159).withOpacity(0.4),
              const Color.fromARGB(255, 70, 53, 165).withOpacity(0.2),
              const Color(0XFF6F35A5).withOpacity(0.1),
              const Color(0XFF6F35A5).withOpacity(0.05),
              const Color(0XFF6F35A5).withOpacity(0.025),
            ]),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.responsiveWidth(24),
              vertical: context.responsiveHeight(50)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Find Your\nFavourite Food",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: context.responsiveWidth(22)),
                ),
                const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.home,
                      color: primaryColor,
                    )),
              ],
            ),
            const SizedBox(
              height: defaultPadding * 1.5,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:
                          BorderRadius.circular(context.responsiveWidth(12))),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: context.responsiveHeight(8)),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search"),
            ),
            const SizedBox(
              height: defaultPadding * 1.5,
            ),
            Container(
              height: context.responsiveHeight(180),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(context.responsiveWidth(12)),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://cdn.grabon.in/gograbon/images/web-images/uploads/1618575517942/food-coupons.jpg"))),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nearest Restaurants",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: context.responsiveWidth(16)),
                    ),
                    Text(
                      "The best food close to you",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: context.responsiveWidth(10)),
                    ),
                  ],
                ),
                const Text(
                  "View All",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: context.responsiveHeight(170),
              child: ListView(
                padding: EdgeInsets.symmetric(
                    vertical: context.responsiveHeight(12)),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CardDetails(
                      img:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOW9XmXjXt_OPvwgZ1dSWtTMtQ_JVEAdvBnnqJl5_cA&s",
                      restaurentName: "Farsa",
                      km: "28"),
                  CardDetails(
                      img:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4HLSTXDPsfTZVVsFoWD7_64aK2DGp7rRPO7Jaw1cjjw&s",
                      restaurentName: "Amigos",
                      km: "19"),
                  CardDetails(
                      img:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMEolnWyBHHAoeSEo6aRCgyKtPFRt9eHZwsQ&s",
                      restaurentName: "Muzwalla",
                      km: "16"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Menu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: context.responsiveWidth(16)),
                    ),
                    Text(
                      "The best food for you",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: context.responsiveWidth(10)),
                    ),
                  ],
                ),
                const Text(
                  "View More",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: context.responsiveHeight(170),
              child: ListView(
                padding: EdgeInsets.symmetric(
                    vertical: context.responsiveHeight(12)),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CardDetails(
                      img:
                          "https://i.pinimg.com/736x/29/a2/50/29a250fef4c1e5190dc14da037ca751f.jpg",
                      restaurentName: "Biriyani",
                      km: "22"),
                  CardDetails(
                      img:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcQ_pjGF-Rk7O_GozIFtDAtt-LimQA3TggYGaacMBeEg&s",
                      restaurentName: "Pizza",
                      km: "16"),
                  CardDetails(
                      img:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdWzWx9ocInFhmtpDG_hVjqryk1ICM8Ar06L2RWIZ-NQ&s",
                      restaurentName: "Burger",
                      km: "20"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: context.responsiveWidth(5),
              ),
              width: context.maxWidth() / 1.1,
              child: Text(
                "Eat What makes you happy",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: context.responsiveWidth(18),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: context.responsiveWidth(10),
                  bottom: context.responsiveWidth(15)),
              height: context.maxHeight() / 3,
              width: context.maxWidth(),
              child: GridView.builder(
                itemCount: foodItemsList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return CardDetails(
                      img: foodItemsList[index].imgurl,
                      restaurentName: foodItemsList[index].name,
                      km: "20 km away");
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  final String img;
  final String restaurentName;
  final String km;

  const CardDetails(
      {super.key,
      required this.img,
      required this.restaurentName,
      required this.km});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: context.responsiveWidth(12)),
      child: Container(
        height: context.responsiveHeight(150),
        width: context.responsiveWidth(140),
        padding: EdgeInsets.all(context.responsiveWidth(16)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(context.responsiveWidth(12))),
        child: Column(
          children: [
            Image.network(
              img,
              fit: BoxFit.cover,
              height: context.responsiveHeight(60),
            ),
            SizedBox(
              height: context.responsiveHeight(12),
            ),
            Text(
              restaurentName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: context.responsiveWidth(16)),
            ),
            Text("$km km away",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: context.responsiveWidth(10))),
          ],
        ),
      ),
    );
  }
}
