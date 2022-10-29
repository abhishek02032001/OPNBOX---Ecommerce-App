import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';

class SmallButton extends StatelessWidget {
  final String title;
  const SmallButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: orange,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            color: white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
