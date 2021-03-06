import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/convex_header.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:ca_simple_service/widgets/text_full_button.dart';
import 'package:ca_simple_service/widgets/text_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(children: [
          Expanded(
            child: Column(children: [
              ConvexHeaderWidget(),
              TextWidget(
                text: 'Let’s Sign You In',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 8.0),
              TextWidget(
                text: 'Welcome back, you’ve been missed!',
                style: Theme.of(context).textTheme.headline5,
              ),
              Container(
                padding: EdgeInsets.only(left: 35, right: 35, top: 40),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: emailDecoration(),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: passwordDecoration(),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 35, right: 35, bottom: 16),
            child: Column(
              children: [
                TextFullButton(
                  child: Text('Sign In'),
                  buttonColor: colorBlue,
                  textColor: Colors.white,
                  onPressed: null,
                ),
                SizedBox(height: 16.0),
                RichText(
                  text: TextSpan(
                    text: 'Don' + 't have an account? ',
                    style: Theme.of(context).textTheme.headline5,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign up!',
                          style: TextStyle(
                            color: colorBlue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/signup');
                            }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: colorGreyLight,
          ),
          Container(
            padding: EdgeInsets.only(left: 35, right: 35, top: 16, bottom: 35),
            child: Column(
              children: [
                TextIconButton(
                  child: Text('Connect with Facebook'),
                  logo: Image.asset('images/facebook.png'),
                  onPressed: null,
                ),
                SizedBox(height: 4.0),
                TextIconButton(
                  child: Text('Connect with Google'),
                  logo: Image.asset('images/google.png'),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
    // );
  }

  emailDecoration() {
    return InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(Icons.person),
      suffix: Icon(Icons.done),
      labelText: 'Username or Email',
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

  passwordDecoration() {
    return InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(Icons.lock),
      suffixIcon: FlatButton(
        onPressed: () {},
        child: Text(
          "Forgot?",
          style: TextStyle(color: colorBlue),
        ),
      ),
      labelText: 'Password',
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
