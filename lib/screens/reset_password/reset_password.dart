import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:ca_simple_service/widgets/text_full_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 84),
            RotationTransition(
              turns: AlwaysStoppedAnimation(45 / 360),
              child: Image.asset(
                'images/touch-white.png',
                width: 60,
                height: 60,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin: EdgeInsets.only(top: 35, left: 20, right: 20),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 56, left: 20, right: 20, bottom: 20),
                  child: Column(children: [
                    TextWidget(
                      text: 'Reset your password',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(height: 12.0),
                    TextWidget(
                      text: 'At least 8 characters, with uppercase',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextWidget(
                      text: 'and lowercase letters',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 48),
                    TextFormField(
                      obscureText: true,
                      decoration: newPasswordDecoration(),
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      obscureText: true,
                      decoration: confirmPasswordDecoration(),
                    ),
                    SizedBox(height: 35),
                    TextFullButton(
                      child: Text('Reset Password'),
                      buttonColor: colorBlue,
                      textColor: Colors.white,
                      onPressed: null,
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(height: 47),
            ClipOval(
              child: Material(
                color: Colors.black,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  newPasswordDecoration() {
    return InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(Icons.lock),
      suffix: Icon(Icons.done),
      labelText: 'New Password',
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: colorGreyLight,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: colorGreyLight,
        ),
      ),
    );
  }

  confirmPasswordDecoration() {
    return InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(Icons.lock),
      suffix: Icon(Icons.done),
      labelText: 'Confirm Password',
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: colorGreyLight,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: colorGreyLight,
        ),
      ),
    );
  }
}
