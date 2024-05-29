import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dynmic_sizing.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
String? getUserEmail() {
  final User? user = auth.currentUser;
  if (user != null) {
    return user.email;
  }
  return null;
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          centerTitle: true,
          title: Text(
            "Profile",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.nightlight_outlined,
                  color: Colors.white,
                ))
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(context.responsiveWidth(25)),
            child: Column(
              children: [
                SizedBox(
                    height: context.responsiveHeight(120),
                    width: context.responsiveWidth(120),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: context.responsiveWidth(80),
                        color: Colors.black,
                      ),
                    )),
                SizedBox(
                  height: context.responsiveHeight(15),
                ),
                Text(
                  "Sufiyan",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.grey.shade800,
                      fontSize: context.responsiveWidth(24)),
                ),
                SizedBox(
                  height: context.responsiveHeight(5),
                ),
                Text(
                  getUserEmail().toString(),
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: Colors.grey.shade800,
                      fontSize: context.responsiveWidth(16)),
                ),
                SizedBox(
                  height: context.responsiveHeight(25),
                ),
                SizedBox(
                  width: context.responsiveWidth(200),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff6f35a5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  context.responsiveWidth(20)))),
                      onPressed: () {},
                      child: Text(
                        "Edit Profile",
                        style: Theme.of(context).textTheme.button?.copyWith(
                            color: Colors.white,
                            fontSize: context.responsiveWidth(16)),
                      )),
                ),
                SizedBox(
                  height: context.responsiveHeight(25),
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
                SizedBox(
                  height: context.responsiveHeight(15),
                ),
                ProfileMenuWidget(
                  text: "Settings",
                  icon: Icons.settings,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: "Billing Details",
                  icon: Icons.wallet,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: "User Management",
                  icon: Icons.account_circle,
                  press: () {},
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                ),
                SizedBox(
                  height: context.responsiveHeight(15),
                ),
                ProfileMenuWidget(
                  text: "Help & Support",
                  icon: Icons.help_outline,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: "Privacy Policy",
                  icon: Icons.lock_outline_rounded,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: "Log Out",
                  endIcon: false,
                  icon: Icons.logout,
                  press: () {
                    auth.signOut();
                    Navigator.pop(context);
                  },
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget(
      {super.key,
      required this.text,
      required this.icon,
      required this.press,
      this.endIcon = true,
      this.color});

  final String text;
  final IconData icon;
  final void Function()? press;
  final bool endIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Container(
        width: context.responsiveWidth(40),
        height: context.responsiveHeight(40),
        padding: EdgeInsets.all(context.responsiveWidth(10)),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(context.responsiveWidth(10))),
        child: Icon(
          icon,
          color: color ?? Colors.grey.shade800,
          size: context.responsiveWidth(22),
        ),
      ),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontSize: context.responsiveWidth(17), color: color),
      ),
      trailing: endIcon
          ? Container(
              height: context.responsiveHeight(30),
              width: context.responsiveWidth(30),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius:
                      BorderRadius.circular(context.responsiveWidth(100))),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.black,
                size: context.responsiveWidth(16),
              ),
            )
          : null,
    );
  }
}
