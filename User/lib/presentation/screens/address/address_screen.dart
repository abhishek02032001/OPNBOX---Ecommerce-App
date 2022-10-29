import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final ScrollController scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Image(image: AssetImage("assets/back.png"),),
        title: const Text("Address"),
        elevation: 0.0,
        backgroundColor: orange,
      ),
      body: SizedBox(
        width: getWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              _addAddressButton(context),
              SizedBox(height: 5.0),
              Container(
                width: getWidth(context) - 20,
                child: Text(
                  "Saved Address",
                  style: TextStyle(
                    color: black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => _addressCard(),
                  itemCount: 3,
                  shrinkWrap: true,
                  controller: scroll,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addAddressButton(BuildContext context) {
    return Container(
      width: getWidth(context) - 20.0,
      decoration: BoxDecoration(
        border: Border.all(color: orange, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          "Add a New Address",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: black,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _addressCard() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abhishke Mishra",
                    style: TextStyle(
                      color: black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Room No. 307, Bldg No.: 6, Bhavani Welfare Society",
                    style: TextStyle(
                      color: black,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "Malibu, California, 90265",
                    style: TextStyle(
                      color: black,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "Phone number: 212-970-4133",
                    style: TextStyle(
                      color: black,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: orange,
                ),
                SizedBox(height: 10.0),
                Icon(
                  Icons.delete,
                  color: orange,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
