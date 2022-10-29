import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/widgets/full_screen_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        title: const Text(
          "Cart",
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: getWidth(context),
          height: getHeight(context),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(context) * 0.5,
                width: getWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: scroll,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _cartItemCard(context);
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: lightGrey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price Details",
                      style: TextStyle(
                          color: black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    _rowItem("Price (3 Items)", "1500000", black, false),
                    _rowItem("Discount", "-7000", orange, false),
                    _rowItem("Delivery Charges", "+50", black, false),
                    _rowItem("Total Amount", "1234567", black, true),
                    const SizedBox(height: 5.0),
                    Text(
                      "You will save 7000 on this order.",
                      style: TextStyle(
                        color: orange,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SubTotal:",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "12456",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              const FullScreenButton(buttonText: "Proceed to Buy"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cartItemCard(BuildContext context) {
    return Container(
      width: getWidth(context),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                height: 100.0,
                image: AssetImage("assets/phone.png"),
              ),
              Row(
                children: [
                  Container(
                    color: grey,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    color: white,
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Container(
                    color: grey,
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple Iphone (16/64)",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 0,
                    minRating: 0,
                    maxRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18.0,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: orange,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    softWrap: true,
                    text: TextSpan(
                      text: "\u{20B9} 34560   ",
                      style: TextStyle(),
                      children: [
                        const TextSpan(
                          text: "\u{20B9} 50000",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        TextSpan(
                          text: "   (38% off)",
                          style: TextStyle(
                            color: orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  _deleteButton(),
                  _buyThisNowButton(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _deleteButton() {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Delete",
        ),
      ),
    );
  }

  Widget _buyThisNowButton() {
    return Container(
      decoration: BoxDecoration(
        color: orange,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Buy This Now",
          style: TextStyle(
            color: white,
          ),
        ),
      ),
    );
  }

  Widget _rowItem(String title, String value, Color col, bool bold) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: black,
              fontSize: 18.0,
              fontWeight: bold ? FontWeight.bold : FontWeight.w300,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: col,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

}
