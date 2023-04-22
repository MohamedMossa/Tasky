import 'package:flutter/material.dart';
import '../app_color.dart';

class StackCircleWidget extends StatelessWidget {
  const StackCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              color: AppColor.mainAppColor.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(170),
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            margin: const EdgeInsets.only(left: 30),
            height: 130,
            width: 230,
            decoration: BoxDecoration(
              color: AppColor.mainAppColor.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(200),
                bottomLeft: Radius.circular(200),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
