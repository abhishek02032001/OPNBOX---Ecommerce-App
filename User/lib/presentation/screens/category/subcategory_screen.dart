import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/screens/category/widgets/category_card_grid.dart';
import 'package:unbox/presentation/screens/product/product_screen.dart';
import 'package:unbox/presentation/widgets/product_search_textfield.dart';

class SubcategoryScreen extends StatelessWidget {
  SubcategoryScreen({Key? key}) : super(key: key);

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
              "Subcategories",
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
              width: getWidth(context) - (2 * hp),
              child: GridView.builder(
                controller: _scroll,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                  childAspectRatio: (2 / 2),
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen()));
                    },
                    child: const CategoryCardGrid(),
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
