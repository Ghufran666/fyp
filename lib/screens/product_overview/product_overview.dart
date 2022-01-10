import 'package:digital_ordering_system/config/colors.dart';
import 'package:digital_ordering_system/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final Item? items;
  // ignore: use_key_in_widget_constructors
  const ProductOverview({Key? key, this.items});

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  // get items => null;
  final SigninCharacter _character = SigninCharacter.fill;

  Widget bottomNavigatorBar({
    Color? iconColor,
    Color? backgroundColor,
    Color? color,
    String? title,
    IconData? iconData,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title!,
              style: TextStyle(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        backgroundColor: const Color(0xffd1ad17),
        title: Text(
          widget.items!.name!,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.items!.name!),
                    subtitle: Text(widget.items!.price!),
                  ),
                  Container(
                      height: 250,
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Image.network(widget.items!.imageUrl!)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: const Text(
                      "Available Options",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green.shade700,
                            ),
                            Radio(
                              value: SigninCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green.shade700,
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        Text(widget.items!.price!),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.add,
                                size: 17,
                                color: Color(0xffd1ad17),
                              ),
                              Text(
                                "ADD",
                                style: TextStyle(color: Color(0xffd1ad17)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About this product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.items!.description!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        // height: 300,
        // child: Image.network(items!.imageUrl!),
      ),
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
              backgroundColor: primaryColor,
              iconColor: Colors.white70,
              color: scaffoldBackgroundColor,
              title: "Add to Wishlist",
              iconData: Icons.favorite_outline_outlined),
          bottomNavigatorBar(
              backgroundColor: Colors.white,
              color: Colors.white,
              iconColor: Colors.black,
              title: "Go to Cart",
              iconData: Icons.shop_outlined),
        ],
      ),
    );
  }
}
// class ProductOverview extends StatelessWidget {
//   final Item? items;
// //   // ignore: use_key_in_widget_constructors
//    ProductOverview({Key? key, this.items});
//  final SigninCharacter _character = SigninCharacter.fill;
 
// Widget bottomNavigatorBar({
//     Color? iconColor,
//     Color? backgroundColor,
//     Color? color,
//     String? title,
//     IconData? iconData,
//   }) {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         color: backgroundColor,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               iconData,
//               size: 17,
//               color: iconColor,
//             ),
//             const SizedBox(
//               width: 5,
//             ),
//             Text(
//               title!,
//               style: TextStyle(
//                 color: textColor,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: textColor),
//         backgroundColor: const Color(0xffd1ad17),
//         // title: Text(items.name),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   ListTile(
//                     title: Text(items!.name!),
//                     subtitle: Text(items!.price!),
//                   ),
//                   Container(
//                       height: 250,
//                       padding: const EdgeInsets.all(40),
//                       child: Image.network(items!.image!)
//                       ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     width: double.infinity,
//                     child: const Text(
//                       "Available Options",
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         color: Colors.black87,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 10,
//                     ),
//                     child: Row(
//                       children: [
//                         Row(
//                           children: [
//                             CircleAvatar(
//                               radius: 3,
//                               backgroundColor: Colors.green.shade700,
//                             ),
//                             Radio(
//                               value: SigninCharacter.fill,
//                               groupValue: _character,
//                               activeColor: Colors.green.shade700,
//                               onChanged: (value) {
//                                 setState(() {});
//                               },
//                             )
//                           ],
//                         ),
//                         // Text(items!.price!),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 30,
//                             vertical: 10,
//                           ),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: Colors.grey,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Icon(
//                                 Icons.add,
//                                 size: 17,
//                                 color: Color(0xffd1ad17),
//                               ),
//                               Text(
//                                 "ADD",
//                                 style: TextStyle(color: Color(0xffd1ad17)),
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.all(20),
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     "About this product",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                    Text(
//                     "Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//         // height: 300,
//         // child: Image.network(items!.imageUrl!),
//       ),
//       bottomNavigationBar: Row(
//         children: [
//           bottomNavigatorBar(
//               backgroundColor: textColor,
//               color: Colors.white70,
//               iconColor: Colors.grey,
//               title: "Add to Wishlist",
//               iconData: Icons.favorite_outline_outlined),
//           bottomNavigatorBar(
//               backgroundColor: primaryColor,
//               color: textColor,
//               iconColor: Colors.white70,
//               title: "Go to Cart",
//               iconData: Icons.shop_outlined),
//         ],
//       ),
//     );
//   }
// }