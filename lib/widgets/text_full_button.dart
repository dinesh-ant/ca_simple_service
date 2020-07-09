import 'package:ca_simple_service/constants/constant.dart';
import 'package:flutter/material.dart';

class TextFullButton extends StatefulWidget {
  final Widget child;
  final GestureTapCallback onPressed;

  TextFullButton({
    @required this.child,
    @required this.onPressed,
  });
  @override
  _TextFullButtonState createState() => _TextFullButtonState();
}

class _TextFullButtonState extends State<TextFullButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ButtonTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 44.0,
        child: RaisedButton(
          color: colorBlue,
          textColor: Colors.white,
          child: this.widget.child,
          onPressed: () {
            this.widget.onPressed();
          },
        ),
      ),
    );
  }
}
