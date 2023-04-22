import 'package:flutter/material.dart';

import '../app_color.dart';
import 'small_text.dart';

class BottomRow extends StatelessWidget {
  final String text;
  final String textButton;
  final void Function()? onTap;
  const BottomRow(
      {super.key, required this.text, this.onTap, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmallText(text: text),
        GestureDetector(
          onTap: onTap,
          child: SmallText(
            text: textButton,
            color: AppColor.buttonAppColor,
          ),
        ),
      ],
    );
  }
}
