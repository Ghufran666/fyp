import 'package:digital_ordering_system/config/colors.dart';
import 'package:digital_ordering_system/screens/home/drawerside.dart';
import 'package:flutter/material.dart';

class MYProfile extends StatelessWidget {
  const MYProfile({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
 Widget listTile({IconData? icon, String? title}) {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title!),
          trailing: const Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor, 
      appBar: AppBar(
        backgroundColor: primaryColor,
          elevation: 0.0,
          title: Text(
            "My Profile",
            style: TextStyle(fontSize: 18, color: textColor),
          )),
      drawer:const DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 548,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 130,
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ghufran",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text("ghufranali510@gmail.com")
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: primaryColor,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    color: primaryColor,
                                  ),
                                  backgroundColor: scaffoldBackgroundColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTile(
                      icon: Icons.shop_outlined,
                      title: "My Orders"
                    ),
                    listTile(
                      icon: Icons.person_outline,
                      title: "Refer a Friends"
                    ),
                    listTile(
                      icon: Icons.file_copy_outlined,
                      title: "Terms & Conditions"
                    ),
                    listTile(
                      icon: Icons.policy_outlined,
                      title: "Privacy Policies"
                    ),
                    listTile(
                      icon: Icons.add_chart_outlined,
                      title: "My Orders"
                    ),
                    listTile(
                      icon: Icons.exit_to_app_outlined,
                      title: "About"
                    ),
                    listTile(
                      icon: Icons.shop_outlined,
                      title: "My Orders"
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                backgroundImage: const NetworkImage(
                    "https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg"),
                radius: 45,
                backgroundColor: scaffoldBackgroundColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
