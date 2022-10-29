import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';

class CategoryCardGrid extends StatelessWidget {
  const CategoryCardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = getWidth(context) - hp - 20;
    return Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: black, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            width: w - 20,
            height: 130,
            image: const AssetImage("assets/computer.jpg"),
          ),
          Container(
            height: 3.0,
            color: black,
          ),
          Text(
            "Laptop",
            style: TextStyle(
              color: black,
              fontSize: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}
