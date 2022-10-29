import 'package:flutter/material.dart';
import 'package:unbox/constants/theme.dart';
import 'package:unbox/presentation/screens/address/add_address_screen.dart';
import 'package:unbox/presentation/screens/authenticate/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unbox Ecommerce App",
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const AddAddressScren(),
    );
  }
}
