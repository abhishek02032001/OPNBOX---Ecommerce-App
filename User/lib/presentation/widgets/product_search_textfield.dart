import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';

class ProductSearchTextField extends StatelessWidget {
  const ProductSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hp),
      child: TextField(
        style: const TextStyle(
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: grey,
          focusColor: white,
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: yellow,
          hintText: "What are you looking for?",
        ),
      ),
    );
  }
}
