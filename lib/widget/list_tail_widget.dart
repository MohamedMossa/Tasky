import 'package:flutter/material.dart';

import '../app_color.dart';

class ListTailWidget extends StatelessWidget {
  void Function() iconTap;
  final String taskName;
  bool isChecked = false;
  final void Function(bool?)? checkBoxTap;
  ListTailWidget({
    super.key,
    required this.taskName,
    this.checkBoxTap,
    this.isChecked = false,
    required this.iconTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        side: BorderSide(color: Colors.white),
        activeColor: Colors.white,
        checkColor: AppColor.mainAppColor,
        value: isChecked,
        onChanged: checkBoxTap,
      ),
      title: Text(taskName,style: TextStyle(fontSize: 18,),),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,color: Colors.white,
        ),
        onPressed: iconTap,
      ),
    );
  }
}
