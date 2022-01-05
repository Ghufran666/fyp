import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
  final String productName;

  final Function onTap;
  //final Function onTap;

  SingleProduct({
    required this.onTap,
    required this.productImage,
    required this.productName,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
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
                  GestureDetector(
                      onTap: onTap(context),
                      child: Container(
                          height: 150,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Image.network(productImage))),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productName,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Text(
                                ' 210rs/half',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
            ),
          ],
        ));
  }
}
