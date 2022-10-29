import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/screens/product/widgets/product_card.dart';
import 'package:unbox/presentation/widgets/product_search_textfield.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);
  final ScrollController _scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Products",
              style: TextStyle(
                color: black,
              ),
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      width: 30.0,
                      height: 30.0,
                      image: AssetImage("assets/cartActive.png"),
                    ),
                    SizedBox(width: 10.0),
                    Image(
                      width: 30.0,
                      height: 30.0,
                      image: AssetImage("assets/avatar.png"),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            const ProductSearchTextField(),
            const SizedBox(height: 10.0),
            SizedBox(
              width:  getWidth(context) - (2 * hp),
              child: ListView.builder(
                controller: _scroll,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ProductCard();
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
