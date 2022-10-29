import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/widgets/product_search_textfield.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Orders"),
        elevation: 0.0,
        backgroundColor: orange,
      ),
      body: SizedBox(
        height: getHeight(context),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const ProductSearchTextField(),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                controller: scroll,
                itemCount: 19,
                shrinkWrap: true,
                itemBuilder: (context, idx) => _orderCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _orderCard() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              width: 75.0,
              height: 75.0,
              image: AssetImage("assets/phone.png"),
            ),
            SizedBox(width: 5.0),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Apple iPhone 11(128GB) -White",
                    style: TextStyle(
                      color: black,
                      fontSize: 18.0,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Delivered   23 June 2022",
                    style: TextStyle(
                      color: black,
                      fontSize: 12.0,
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
