import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/text_full_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefinitionTab extends StatefulWidget {
  @override
  _DefinitionTabState createState() => _DefinitionTabState();
}

class _DefinitionTabState extends State<DefinitionTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          children: [
            Expanded(
              child: Text(
                'A public company means a company which: a) is not a private company; b) has a minimum paid-up share capital of five lakh rupees  A public company may be formed for any lawful purpose by seven or more persons, by subscribing their names or his name to a memorandum and complying with the requirements of this Act in respect of registration',
                style: TextStyle(color: colorTextLight),
              ),
            ),
            Text(
              '₹ 12,999',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: colorTextDark,
              ),
            ),
            SizedBox(height:28.0),
            TextFullButton(
              child: Text('Purchase'),
              buttonColor: colorBlue,
              textColor: Colors.white,
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
