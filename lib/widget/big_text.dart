import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;

  const BigText(
      {Key? key, required this.text, this.color = const Color(0xf0000000)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25, color: color),
    );
  }
}
