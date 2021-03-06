import 'package:flutter/material.dart';
import 'package:smartcaseflutter/utils/constant_color.dart';

class RoundBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  RoundBtn({Key key, @required this.onPressed, @required this.text})
      : assert(onPressed != null),
        assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      elevation: 6.0,
      fillColor: ConstantColor.ternaryBlue,
      shape: StadiumBorder(),
    );
  }
}
