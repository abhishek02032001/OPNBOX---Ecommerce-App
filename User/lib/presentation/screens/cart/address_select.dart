import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';

class AddressSelect extends StatelessWidget {
  const AddressSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address",
          style: TextStyle(
            color: black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                _roundItem(true),
                const SizedBox(height: 10.0),
                _addressCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundItem(bool active) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: active ? orange : white,
            shape: BoxShape.circle,
            border: Border.all(
              color: active ? orange : white,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: active ? white : orange,
              ),
            ),
          ),
        ),
        Text(
          "Address",
          style: TextStyle(
            color: black,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }

  Widget _addressCard() {
    return Container(
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(10.0),       
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "Anthony Strak",
                  style: TextStyle(
                    color: black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Shahkar Society, Indira Nagar, Rani Sati Marg, Malad East, Mumbai-400097",
                  style: TextStyle(
                    color: black,
                    fontSize: 10.0,
                  ),
                ),
                Text(
                  "Phone Number: 9326482460",
                  style: TextStyle(
                    color: black, 
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
