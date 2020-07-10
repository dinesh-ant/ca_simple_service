import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:ca_simple_service/widgets/text_full_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: colorBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin: EdgeInsets.only(top: 84, left: 15, right: 15),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 56, left: 20, right: 20, bottom: 20),
                  child: Column(children: [
                    TextWidget(
                      text: 'Welcome to SCS !',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4,
                        height: 2,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextWidget(
                      text: 'We offer all things legal to get',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.4,
                        height: 1.5,
                      ),
                    ),
                    TextWidget(
                      text: 'you started on your path to a',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.4,
                        height: 1.5,
                      ),
                    ),
                    TextWidget(
                      text: 'successful  business.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.4,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 56.0),
                    TextFullButton(
                      child: Text(
                        'Get Started',
                      ),
                      buttonColor: Colors.white,
                      textColor: colorBlue,
                      onPressed: null,
                    )
                  ]),
                ),
              ),
            ),
            Expanded(
              child: Image.asset('images/onboard-image.png'),
            ),
          ],
        ),
      ),
    );
  }
}
