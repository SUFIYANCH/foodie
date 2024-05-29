import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff6f35a5);
const Color primaryLightColor = Color(0xfff1e6ff);
const double defaultPadding = 16;

class Restaurants {
  String imgurl, title, locations, rating, price, description;
  int id;

  Restaurants(
      {required this.imgurl,
      required this.id,
      required this.title,
      required this.description,
      required this.locations,
      required this.rating,
      required this.price});
}

List<Restaurants> restaurantsList = [
  Restaurants(
      id: 1,
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnLhozwRO29iGgGxWPuIjltS6lxE5oESoZLlrCnzriPA&s",
      title: "Maple Cafe",
      description:
          "Maple cafe can be recommended for tasty sandwiches, shawarma and burgers. Great coffee or good juice will make your meal tastier and you'll certainly come back. Many visitors underline that the staff is cheerful at Maple Café. Professional service is something clients like here. It's a good place with the peaceful ambiance. This place scored 4.3 in the Google rating system.",
      locations: "Wandoor",
      rating: "4.7",
      price: "₹200"),
  Restaurants(
      id: 2,
      imgurl:
          "https://img.veenaworld.com/wp-content/uploads/2023/01/Famous-Food-Delicacies-of-Tamil-Nadu-1.jpg",
      title: "Uduppi Hotel",
      description:
          "At Uduppi Hotel, we pride ourselves on offering a culinary experience that is both pure and delectable. Our 100% vegetarian menu features fresh, locally sourced ingredients, ensuring every dish is of the highest quality. Our chefs skillfully blend traditional Udupi flavors with innovative techniques to create meals that are both nourishing and flavorful. From hearty breakfasts to sumptuous dinners, each bite promises a delightful journey of taste. We are committed to providing food that is not only delicious but also promotes health and well-being.",
      locations: "Nilambur",
      rating: "4.9",
      price: "₹120"),
  Restaurants(
      id: 3,
      imgurl:
          "https://bespoqe.com/sites/default/files/styles/ridimensionata_per_colonna/public/spaghetti.jpg?itok=bn3u2eXo",
      title: "KL71",
      description:
          "Perfectly cooked shawarma is so tasty here that it will certainly become one of your favorite dishes. Many people find that you can have great coffee at this restaurant. The staff is said to be friendly here. Spectacular service is a strong point that plays a great role for the success of KL 71 JC shawarbica. A lot of visitors think that the atmosphere is exotic here.",
      locations: "Nilambur",
      rating: "4.2",
      price: "₹140"),
  Restaurants(
      id: 4,
      imgurl:
          "https://www.abhibus.com/blog/wp-content/uploads/2023/07/Puttu-And-Kadala-Curry.jpg",
      title: "Arya Hotel",
      description:
          "At Arya Hotel, we offer a culinary experience that celebrates tradition and quality. Our menu features a diverse selection of vegetarian dishes, crafted from the freshest, locally sourced ingredients. Our skilled chefs ensure each meal is prepared with care and precision, bringing out the authentic flavors of traditional recipes. From hearty breakfasts to exquisite dinners, every dish is a blend of taste and nutrition. ",
      locations: "Wandoor",
      rating: "4.1",
      price: "₹50"),
  Restaurants(
      id: 5,
      imgurl:
          "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2019/08/Idli-Kerala.jpg?resize=800%2C533&ssl=1",
      title: "Chillies Restaurant",
      description:
          "Fine dining is an experience. At Chillies food is cooked with passion. Come and enjoy the exclusive feel in our restaurant.Mouth watering dishes served to you to create mesmerizing memories on your tastebuds. A celebration of vivid flavours and aroma entangled with fresh ingredients gives you feel at home.",
      locations: "Wandoor",
      rating: "4.6",
      price: "₹80"),
  Restaurants(
      id: 6,
      imgurl:
          "https://media.post.rvohealth.io/wp-content/uploads/2021/07/Starbucks_Food_Spinach_Feta_Wrap-732x549-thumbnail-732x549.jpg",
      title: "Aathas Bakery",
      description:
          "At Aathas Restaurant, we pride ourselves on offering a culinary journey that is both authentic and exquisite. Our menu features a rich variety of dishes, crafted using the freshest, highest-quality ingredients sourced locally. Our chefs blend traditional recipes with contemporary techniques to create meals that are bursting with flavor and nutrition.",
      locations: "Wandoor",
      rating: "4.3",
      price: "₹160"),
  Restaurants(
      id: 7,
      imgurl:
          "https://i.pinimg.com/736x/29/a2/50/29a250fef4c1e5190dc14da037ca751f.jpg",
      title: "Casamia Restaurant",
      description:
          "At Casamia Restaurant, we redefine culinary excellence with our commitment to top-notch food quality. Our menu showcases a fusion of global flavors using premium, locally sourced ingredients for freshness and sustainability. Talented chefs curate each dish with precision, ensuring a symphony of taste in every bite. From appetizing starters to indulgent main courses, every meal reflects our dedication to gastronomic delight. We prioritize quality ingredients and meticulous preparation to elevate your dining experience.",
      locations: "Nilambur",
      rating: "4.9",
      price: "₹210"),
];

class FoodItems {
  String imgurl, name;

  FoodItems({required this.imgurl, required this.name});
}

List<FoodItems> foodItemsList = [
  FoodItems(
      imgurl:
          "https://www.licious.in/blog/wp-content/uploads/2020/12/Spicy-Chicken.jpg",
      name: "Chicken"),
  FoodItems(
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdWzWx9ocInFhmtpDG_hVjqryk1ICM8Ar06L2RWIZ-NQ&s",
      name: "Burger"),
  FoodItems(
      imgurl:
          "https://i.pinimg.com/736x/29/a2/50/29a250fef4c1e5190dc14da037ca751f.jpg",
      name: "Biriyani"),
  FoodItems(
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcQ_pjGF-Rk7O_GozIFtDAtt-LimQA3TggYGaacMBeEg&s",
      name: "Pizza"),
  FoodItems(
      imgurl:
          "https://media.post.rvohealth.io/wp-content/uploads/2021/07/Starbucks_Food_Spinach_Feta_Wrap-732x549-thumbnail-732x549.jpg",
      name: "Rolls"),
  FoodItems(
      imgurl:
          "https://bespoqe.com/sites/default/files/styles/ridimensionata_per_colonna/public/spaghetti.jpg?itok=bn3u2eXo",
      name: "Noodles"),
];

class Restaurants1 {
  String title, price;

  Restaurants1({required this.title, required this.price});
}

List<Restaurants1> restaurant1List = [
  Restaurants1(title: "Zinger Burger", price: "120"),
  Restaurants1(title: "Momos", price: "150"),
  Restaurants1(title: "Zinger Roll", price: "90"),
  Restaurants1(title: "Shawarma", price: "100"),
  Restaurants1(title: "Zinger Porotta", price: "30"),
];

class Restaurants6 {
  String title, price;

  Restaurants6({required this.title, required this.price});
}

List<Restaurants6> restaurant6List = [
  Restaurants6(title: "Veg Burger", price: "150"),
  Restaurants6(title: "Chicken Burger", price: "250"),
  Restaurants6(title: "Paneer Burger", price: "180"),
  Restaurants6(title: "Mixed Burger", price: "210"),
  Restaurants6(title: "Cheese Burger", price: "230"),
  Restaurants6(title: "Mexican Burger", price: "190"),
];
