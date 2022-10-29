import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/presentation/widgets/full_screen_button.dart';

class AddAddressScren extends StatefulWidget {
  const AddAddressScren({Key? key}) : super(key: key);

  @override
  State<AddAddressScren> createState() => _AddAddressScrenState();
}

class _AddAddressScrenState extends State<AddAddressScren> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Address"),
        elevation: 0.0,
        backgroundColor: orange,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              componentHeader("Full Name"),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: orange,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Name should not be empty.";
                  }
                  return null;
                },
              ),
              GestureDetector(
                onTap: () {
                  formKey.currentState?.validate();
                },
                child: const FullScreenButton(buttonText: "Add Address"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget componentHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        color: black,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
