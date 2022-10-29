import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/presentation/screens/cart_screen.dart';
import 'package:unbox/presentation/screens/home/home_screen.dart';
import 'package:unbox/presentation/screens/account_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  List screenList = [
    const HomeScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Image(
              width: 25.0,
              height: 25.0,
              image: currentIndex == 0
                  ? const AssetImage("assets/homeActive.png")
                  : const AssetImage("assets/home.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Image(
              width: 25.0,
              height: 25.0,
              image: currentIndex == 1
                  ? const AssetImage("assets/cartActive.png")
                  : const AssetImage("assets/cart.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Image(
              width: 25.0,
              height: 25.0,
              image: currentIndex == 2
                  ? const AssetImage("assets/profileActive.png")
                  : const AssetImage("assets/profile.png"),
            ),
          ),
        ],
      ),
    );
  }
}
