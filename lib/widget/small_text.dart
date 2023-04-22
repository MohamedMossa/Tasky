import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;

  const SmallText(
      {Key? key, required this.text, this.color = const Color(0XFF9E9E9E)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: color,
      ),
    );
  }
}
