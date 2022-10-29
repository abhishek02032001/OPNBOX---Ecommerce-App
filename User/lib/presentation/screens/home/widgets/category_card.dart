import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/presentation/screens/category/category_screen.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  const CategoryCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategoryScreen()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/home.png"),
                ),
              ),
            ),
            Text(
              "Category",
              style: TextStyle(
                color: black,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
