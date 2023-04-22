import 'package:flutter/material.dart';
import 'package:tasky/app_color.dart';
import 'big_text.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final  void Function()? onTap;
  const ButtonWidget({
    super.key,
    required this.text,
     this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
        onTap,

      child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          color: AppColor.buttonAppColor,
          child: Center(
              child: BigText(
            text: text,
            color: Colors.white,
          ))),
    );
  }
}
