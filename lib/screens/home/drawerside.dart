import 'package:digital_ordering_system/config/colors.dart';
import 'package:digital_ordering_system/screens/home/home_screen.dart';
import 'package:digital_ordering_system/screens/my%20profile/my_profile.dart';
import 'package:digital_ordering_system/screens/review_cart/review_cart.dart';
import 'package:flutter/material.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap;

  Widget listTile(
      {IconData? icon,
      required String title,
      Function()? onTap,
      Color? color}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
        color: Colors.grey.shade400,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Welcome Guest"),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 30,
                        // ignore: deprecated_member_use
                        child: OutlineButton(
                          onPressed: () {},
                          child: const Text("Login"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
                icon: Icons.home_outlined,
                title: "Home",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                }),
            listTile(
                icon: Icons.shop_outlined,
                title: "Review Cart",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ReviewCart()));
                }),
            listTile(
                icon: Icons.person_outlined,
                title: "My Profile",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MYProfile()));
                }),
            listTile(icon: Icons.notifications_outlined, title: "Notification"),
            listTile(icon: Icons.star_outlined, title: "Rating & Reviews"),
            listTile(icon: Icons.favorite_outlined, title: "Wishlists"),
            listTile(icon: Icons.copy_outlined, title: "Raise a Complaint"),
            listTile(icon: Icons.format_quote_outlined, title: "FAQs"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Contact Support"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text("Call Us: "),
                        SizedBox(
                          width: 10,
                        ), 
                        Text("0308-2469624"),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Text("Mail Us: "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("ghufranali510@gmail.com"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
