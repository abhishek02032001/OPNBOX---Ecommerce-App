import 'package:flutter/material.dart';

double hp = 10.0;

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  var padding = MediaQuery.of(context).viewPadding;
  height = height - padding.top - padding.bottom - kToolbarHeight;
  return height;
}
