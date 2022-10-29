import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unbox/constants/color.dart';
import 'package:unbox/constants/size.dart';
import 'package:unbox/presentation/screens/dashboard_screen.dart';
import 'package:unbox/presentation/widgets/small_button.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 36.0,
            color: orange,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: hp * 3),
        width: getWidth(context),
        height: getHeight(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: getWidth(context),
              child: Text(
                "Verification Code",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: getWidth(context),
              child: const Text(
                "We have sent the verifiction code to",
              ),
            ),
            SizedBox(height: 5.0),
            SizedBox(
              width: getWidth(context),
              child: const Text(
                "9325482460",
              ),
            ),
            SizedBox(height: 20.0),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const DashboardScreen()),
                    (Route route) => false);
              },
              child: const SmallButton(title: "Verify OTP"),
            ),
          ],
        ),
      ),
    );
  }
}
