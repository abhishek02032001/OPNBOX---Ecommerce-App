import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/screens/authenticate/otp_screen.dart';
import 'package:unbox/presentation/widgets/custom_textfield.dart';
import 'package:unbox/presentation/widgets/small_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          width: getWidth(context),
          height: getHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: getWidth(context) - 80,
                image: const AssetImage(
                  "assets/logo.png",
                ),
              ),
              Text(
                "Welcome !!",
                style: TextStyle(
                  color: orange,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40.0),
              CustomTextField(
                hintText: "Phone Number",
                controller: controller,
                keyboard: TextInputType.phone,
              ),
              const SizedBox(height: 30.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OTPScreen()));
                },
                child: const SmallButton(title: "Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
