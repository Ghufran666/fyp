import 'dart:convert';

import 'package:digital_ordering_system/auth/login_screen.dart';
import 'package:digital_ordering_system/controllers/login_controller.dart';
import 'package:digital_ordering_system/model/product_model.dart';
import 'package:digital_ordering_system/screens/home/drawerside.dart';
import 'package:digital_ordering_system/screens/product_overview/product_overview.dart';
import 'package:digital_ordering_system/screens/home/single_product.dart';
import 'package:digital_ordering_system/screens/search/search.dart';
import 'package:digital_ordering_system/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadDataFromJson();
  }

  loadDataFromJson() async {
    //root bundle return the future so we need to wait
    final jsonData = await rootBundle.loadString("assets/files/products.json");
    final decodeData = jsonDecode(jsonData);
    var productData = decodeData["products"];
    var fastFoodData = decodeData["product"];
    Product.items = List.from(fastFoodData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    Products.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Drawer Initialization
      drawer: const DrawerSide(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          CircleAvatar(
            radius: 14,
            backgroundColor: const Color(0xffd4d181),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  Search()));
              },
              icon: const Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: CircleAvatar(
                radius: 14,
                backgroundColor: const Color(0xffd4d181),
                child: IconButton(
                  icon: const Icon(
                    Icons.logout_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Constants.prefs?.setBool("loggedIn", false);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                ),
              ))
        ],
        backgroundColor: const Color(0xffd6b738),
      ),
      //after appbar side of app
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/3026805/pexels-photo-3026805.jpeg?cs=srgb&dl=pexels-ella-olsson-3026805.jpg&fm=jpg'))),
                child: Row(
                  children: [
                    Expanded(
                      // flex: 2,
                      // ignore: avoid_unnecessary_containers
                      // inner area of after appBar
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 140, bottom: 10),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(0),
                                ),
                              ),
                              child: const Text(
                                'Offers',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            '40% OFF',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'On your nearby Restaurants',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Bar.BQ',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),

              //slide1 of the homepage

              SizedBox(
                height: 280.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Products.items?.length,
                  itemBuilder: (context, index) {
                    return SingleProduct(
                      productName: Products.items![index].name,
                      productUrl: Products.items![index].imageUrl,
                      price: Products.items![index].price,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductOverview(
                                      items: Products.items![index],
                                    )));
                      },
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Fast Food',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 280.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Product.items?.length,
                  itemBuilder: (context, index) {
                    return SingleProduct(
                      productName: Product.items![index].name,
                      productUrl: Product.items![index].imageUrl,
                      price: Product.items![index].price,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductOverview(
                                    items: Product.items![index])));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
