import 'package:ca_simple_service/constants/constant.dart';
import 'package:flutter/material.dart';

class TextIconButton extends StatefulWidget {
  final Widget child;
  final Widget logo;
  final GestureTapCallback onPressed;

  TextIconButton({@required this.child, this.logo, @required this.onPressed});
  @override
  _TextIconButtonState createState() => _TextIconButtonState();
}

class _TextIconButtonState extends State<TextIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 48.0,
        child: FlatButton(
          color: Color.fromRGBO(243, 248, 254, 1),
          textColor: colorTextDark,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Material(
                  // color: Color.fromRGBO(61, 86, 240, 1),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: this.widget.logo,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: this.widget.child,
                ),
              ),
            ],
          ),
          onPressed: () {
            this.widget.onPressed();
          },
        ),
      ),
    );
  }
}
