import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/screens/address/address_screen.dart';
import 'package:unbox/presentation/screens/order/order_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        title: const Text(
          "Account",
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            width: getWidth(context),
            height: getHeight(context) / 3.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  orange,
                  white,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.png"),
                  radius: getWidth(context) / 6.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  "Tony Shark",
                  style: TextStyle(
                    color: black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          _linkButton("profile.png", "Profile"),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderScreen()));
            },
            child: _linkButton("order.png", "Your Orders"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddressScreen()));
            },
            child: _linkButton("address.png", "Your Address"),
          ),
          _linkButton("contact.png", "Contact Us"),
          _linkButton("logout.png", "Logout"),
        ],
      ),
    );
  }

  Widget _linkButton(String image, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 30.0,
                height: 30.0,
                image: AssetImage("assets/profile/${image}"),
              ),
              SizedBox(width: 15.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            ">",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
