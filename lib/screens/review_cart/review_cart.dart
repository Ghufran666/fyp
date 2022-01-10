import 'package:digital_ordering_system/config/colors.dart';
import 'package:digital_ordering_system/screens/widgets/single_item.dart';
import 'package:flutter/material.dart';

class ReviewCart extends StatefulWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  _ReviewCartState createState() => _ReviewCartState();
}

class _ReviewCartState extends State<ReviewCart> {
  var isBool;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        bottomNavigationBar: ListTile(
          title: const Text("Total Amount"),
          subtitle: Text("\$ 170.00", style: TextStyle(color: Colors.green[900]),),
          trailing: SizedBox(
            width: 160,
            child: MaterialButton(
                child: const Text("Submit"),
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {}),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xffd1ad17),
          title: Text(
            "Review Cart",
            style: TextStyle(color: textColor, fontSize: 18),
          ),
        ),
        body: ListView(
          children: const [
            SizedBox(
              height: 10,
            ),
            SingleItem(
              isBool: false,
            ),
            SingleItem(
              isBool: false,
            ),
            SingleItem(
              isBool: false,
            ),
            SingleItem(
              isBool: false,
            ),
            SingleItem(
              isBool: false,
            ),   
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
