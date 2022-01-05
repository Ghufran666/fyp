// import 'package:flutter/material.dart';

// class SingleProduct extends StatelessWidget {
//   final String productImage;
//   final String productName;

//   final Function onTap;
//   //final Function onTap;

//   // ignore: use_key_in_widget_constructors
//   const SingleProduct({
//     required this.onTap,
//     required this.productImage,
//     required this.productName,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 5),
//               height: 300,
//               width: 160,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   GestureDetector(
//                       onTap: onTap(),
//                       child: Container(
//                           height: 150,
//                           padding: const EdgeInsets.all(5),
//                           width: double.infinity,
//                           child: Image.network(productImage))),
//                   Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 10,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               productName,
//                               style: const TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(bottom: 3),
//                               child: Text(
//                                 ' 210rs/half',
//                                 style:
//                                     TextStyle(fontSize: 20, color: Colors.grey),
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(left: 5),
//                                     child: Container(
//                                       height: 30,
//                                       width: 50,
//                                       decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.grey),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       child: Row(
//                                         children: const [
//                                           Expanded(
//                                             child: Text(
//                                               ' 50 gram',
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ),
//                                           Center(
//                                             child: Icon(
//                                               Icons.arrow_drop_down,
//                                               size: 20,
//                                               color: Color(0xffd0b84c),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Expanded(
//                                   child: Container(
//                                     height: 30,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       border: Border.all(color: Colors.grey),
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: const [
//                                         Icon(
//                                           Icons.remove,
//                                           size: 15,
//                                           color: Color(0xffd0b84c),
//                                         ),
//                                         Text(
//                                           '1',
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: Color(0xffd0b84c)),
//                                         ),
//                                         Icon(
//                                           Icons.add,
//                                           size: 15,
//                                           color: Color(0xffd0b84c),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ))
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  final String? productUrl;
  final void Function()? onTap;
  final String? productName;
  final String? price;
  const SingleProduct({Key? key, this.productUrl, this.onTap, this.productName, this.price})
      : super(key: key);

  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 300,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: widget.onTap,
              child: Image.network(
                widget.productUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName!,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    widget.price!,
                    style: const TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  ' 50 gram',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Color(0xffd0b84c),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xffd0b84c),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd0b84c)),
                            ),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Color(0xffd0b84c),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}