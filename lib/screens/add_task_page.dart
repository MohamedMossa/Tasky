import 'package:flutter/material.dart';
import 'package:tasky/app_color.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callBack;

  AddTaskScreen({Key? key, required this.callBack}) : super(key: key);

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF757575),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Add New Task',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColor.buttonAppColor,
                  fontSize: 30),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Enter Your Next Task...",
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 3, color: AppColor.mainAppColor),
                ),
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                callBack(textEditingController.text.trim());
                textEditingController.clear();

                // callBack(textEditingController.text.toString());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColor.buttonAppColor,
                ),
                child: Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
