import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';

class CustomTextField extends StatefulWidget {
  final bool? obscureText;
  final TextInputType? keyboard;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField(
      {Key? key,
      this.obscureText,
      required this.hintText,
      required this.controller,
      this.keyboard})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context) - (hp * 2),
      child: TextField(
        keyboardType: widget.keyboard,
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: orange,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
