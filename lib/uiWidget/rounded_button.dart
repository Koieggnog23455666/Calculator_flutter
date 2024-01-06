import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String btnName;
  final Icon? iconName;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundButton(
      {required this.btnName,
      this.iconName,
      this.bgColor = Colors.cyan,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: iconName != null
            ? Row(
                children: [
                  iconName!,
                  SizedBox(
                    width: 10,
                  ),
                  Text(btnName,style: textStyle,),
                ],
              )
            : Text(
                btnName,
                style: textStyle,
              ),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )
      ),
    );
  }
}
