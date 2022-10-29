import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/screens/cart_screen.dart';
import 'package:unbox/presentation/screens/category/widgets/category_card_grid.dart';
import 'package:unbox/presentation/screens/home/widgets/category_card.dart';
import 'package:unbox/presentation/widgets/product_search_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Image(
                  width: 25.0,
                  height: 25.0,
                  image: AssetImage("assets/menu.png"),
                ),
                SizedBox(width: 10.0),
                Image(
                  width: 160.0,
                  height: 160.0,
                  image: AssetImage("assets/horizontalLogo.png"),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Image(
                    width: 25.0,
                    height: 25.0,
                    image: AssetImage("assets/cartActive.png"),
                  ),
                ),
                SizedBox(width: 10.0),
                Image(
                  width: 25.0,
                  height: 25.0,
                  image: AssetImage("assets/avatar.png"),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            const ProductSearchTextField(),
            const SizedBox(height: 10.0),
            Container(
              color: grey,
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Container(
                    width: getWidth(context),
                    height: 70.0,
                    padding: EdgeInsets.symmetric(horizontal: hp),
                    child: ListView.builder(
                      itemCount: 12,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const CategoryCard(image: "assets/home.png");
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  CarouselSlider.builder(
                    itemCount: 3,
                    options: CarouselOptions(
                      // height: 250,
                      aspectRatio: 2.0,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder: (ctx, index, realIdx) {
                      return Image(
                        width: getWidth(context),
                        height: 400,
                        fit: BoxFit.fill,
                        image: const AssetImage("assets/banner.png"),
                      );
                    },
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: getWidth(context) - (2 * hp),
                    child: GridView.builder(
                      shrinkWrap: true,
                      controller: scroll,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 15,
                        childAspectRatio: (2 / 2),
                      ),
                      itemBuilder: (context, index) {
                        return const CategoryCardGrid();
                      },
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
