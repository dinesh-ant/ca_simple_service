import 'package:flutter/material.dart';

class TextFullButton extends StatefulWidget {
  final Widget child;
  final Color buttonColor;
  final Color textColor;
  final GestureTapCallback onPressed;

  TextFullButton({
    @required this.child,
    @required this.buttonColor,
    @required this.textColor,
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
          color: this.widget.buttonColor,
          textColor: this.widget.textColor,
          child: this.widget.child,
          onPressed: () {
            this.widget.onPressed();
          },
        ),
      ),
    );
  }
}
