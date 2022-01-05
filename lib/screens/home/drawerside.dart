import 'package:flutter/material.dart';

class Drawerside extends StatelessWidget {
  const Drawerside({Key? key}) : super(key: key);

  Widget listTile({IconData? icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xffd1ad17),
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
            listTile(icon: Icons.home_outlined, title: "Home"),
            listTile(icon: Icons.shop_outlined, title: "Review Cart"),
            listTile(icon: Icons.person_outlined, title: "My Profile"),
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
