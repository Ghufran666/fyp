import 'package:digital_ordering_system/config/colors.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatefulWidget {
  final bool? isBool;

  const SingleItem({
    Key? key,
    this.isBool,
  }) : super(key: key);

  @override
  _SingleItemState createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  // SingleItem({this.isBool});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Center(
                    child: Image.network(
                      'https://previews.123rf.com/images/ferli/ferli1508/ferli150800177/43524989-delicious-indian-tandoori-chicken-served-with-salad-isolated-on-white-background.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: widget.isBool!
                        ? MainAxisAlignment.spaceEvenly
                        : MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Product name",
                              style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(" 500/gram"),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: widget.isBool!
                              ? const Text("50 Gram")
                              : Container(
                                  margin: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          "500/gram",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 20,
                                          color: primaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: widget.isBool!
                      ? const EdgeInsets.only(left: 15, right: 15) : const EdgeInsets.symmetric(horizontal: 15, vertical: 32),
                  child: widget.isBool!
                      ? Column(
                          children: [
                            const Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.black54,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_outlined,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                    Text(
                                      "ADD",
                                      style: TextStyle(
                                          fontSize: 14, color: primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ) : Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_outlined,
                                  size: 20,
                                  color: primaryColor,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(
                                      fontSize: 14, color: primaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
        widget.isBool! ? const Divider(
                height: 1,
                color: Colors.black45,
              ) : Container(),
      ],
    );
  }
}
