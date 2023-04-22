import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final void Function()? onTap;
  const AppIcon({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Icon(
          Icons.close,
          size: 18,
        ),
      ),
    );
  }
}
