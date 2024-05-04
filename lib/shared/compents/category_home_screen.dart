import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
 final double width;
 final double height;
 final Function() onTap;
 final Color backgroundColor;
 final Alignment textAlign;
 final double horizontalPadding;
 final double verticalPadding;
 final String text;
 final double textFontSize;
 final FontWeight fontWeightText;
 final Color textColor;

 const DefaultTextButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.white,
    this.horizontalPadding = 20,
    this.verticalPadding = 0,
    this.fontWeightText = FontWeight.bold,
    this.height = 70,
    this.width = double.infinity,
    this.textFontSize = 20,
    this.textAlign = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        color: backgroundColor,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        height: height,
        child: Text(
          text,
          style: TextStyle(
            fontSize: textFontSize,
            fontWeight: fontWeightText,
            color: textColor,
            fontFamily: 'Pacifico'
          ),
        ),
      ),
    );
  }
}
