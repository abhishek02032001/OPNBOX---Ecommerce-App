import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageWidth = (getWidth(context) - (2 * hp)) * 0.30;
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Card(
        elevation: 4.0,
        color: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              width: imageWidth,
              image: const AssetImage("assets/phone.png"),
            ),
            SizedBox(
              width: (getWidth(context) - (2 * hp)) * 0.60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple IPhone11(128GB) - white",
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\u{20B9}23456",
                        style: TextStyle(
                          color: black,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        "\u{20B9}33456",
                        style: TextStyle(
                          color: black,
                          fontSize: 16.0,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Sold BY: Abhishek Mishra",
                    style: TextStyle(
                      color: black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
