import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/clip_header.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:ca_simple_service/widgets/text_full_button.dart';
import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          ClipHeaderWidget(),
          TextWidget(
            text: 'Let’s Sign You In',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 8.0),
          TextWidget(
            text: 'Welcome back, you’ve been missed!',
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            padding: EdgeInsets.all(35),
            child: Column(children: [
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
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
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
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
                      ),
                    ),
                  ],
                ),
              ),
              TextFullButton(child: Text('Sign In'), onPressed: null)
            ]),
          ),
        ],
      )),
    );
  }
}
