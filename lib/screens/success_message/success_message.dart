import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:ca_simple_service/widgets/text_full_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessMessageScreen extends StatefulWidget {
  @override
  _SuccessMessageScreenState createState() => _SuccessMessageScreenState();
}

class _SuccessMessageScreenState extends State<SuccessMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      body: Center(
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                // height: 290,
                child: Stack(
                  children: [
                    Container(
                      height: 260,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        margin: EdgeInsets.all(15),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 72, left: 32, right: 32, bottom: 32),
                          child: Column(children: [
                            TextWidget(
                              text: 'Success',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: colorTextDark,
                                letterSpacing: 0.4,
                                height: 2,
                              ),
                            ),
                            TextWidget(
                              text: 'Package added to you dashboard',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: colorTextLight,
                                letterSpacing: 0.4,
                                height: 1,
                              ),
                            ),
                            SizedBox(height: 32),
                            FlatButton(
                              onPressed: null,
                              child: Text(
                                'Go Back To Home',
                                style: TextStyle(
                                  color: colorBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      // bottom: 150,
                      left: MediaQuery.of(context).size.width / 2 - 40,
                      child: Image.asset(
                        'images/success-image.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ],
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
            ])),
      ),
    );
  }
}
