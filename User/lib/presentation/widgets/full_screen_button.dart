import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';

class FullScreenButton extends StatelessWidget {
  const FullScreenButton({Key? key, required this.buttonText}) : super(key: key);

  final String buttonText;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      width: getWidth(context) - 20.0,
      decoration: BoxDecoration(
        color: orange,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: black,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
