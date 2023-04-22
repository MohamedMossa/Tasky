import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasky/app_color.dart';
import 'package:tasky/model/boxs.dart';
import 'package:tasky/screens/add_task_page.dart';
import 'package:tasky/widget/big_text.dart';
import '../model/tasks.dart';
import '../widget/List_view_widget.dart';
import '../widget/app_clock.dart';
import '../widget/app_icon.dart';
import '../widget/stack_circle_widget.dart';

class TaskPage extends StatefulWidget {
  final String? username;
  const TaskPage({super.key, this.username});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final auth = FirebaseAuth.instance;
  bool issChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6E6E6),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(
            backgroundColor: AppColor.buttonAppColor,
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) =>
                      AddTaskScreen(callBack: (textEditingController) {
                        setState(() {
                          taskBox.put(
                              'key_${textEditingController}',
                              Tasks(
                                  taskName: textEditingController,
                                  isDone: false));
                        });
                        print('key_${textEditingController}');
                        Navigator.pop(context);
                      }));
            }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              //show the top cobtainer
              Positioned(
                child: Container(
                  height: 320,
                  width: double.maxFinite,
                  color: AppColor.buttonAppColor,
                ),
              ),
              //show the stack circles
              Positioned(
                child: StackCircleWidget(),
              ),
              //show the close button
              Positioned(
                right: 20,
                top: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        auth.signOut();
                        Navigator.pop(context);
                      },
                      minWidth: 0,
                      height: 0,
                      padding: EdgeInsets.zero,
                      child: AppIcon(),
                    ),
                  ],
                ),
              ),
              //show th circle avatar
              Positioned.fill(
                top: 60,
                child: Align(
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/image/person.png'),
                    radius: 60,
                    backgroundColor: Colors.teal,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 11,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: BigText(text: "Goog AfterNoon"),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  child: AppClock(),
                ),
                BigText(text: 'Task List'),
                SizedBox(height: 5),
                ListViewWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// MaterialButton(
//                       onPressed: () {
//                         print('heloww worled');
//                       },
//                       minWidth: 0,
//                       height: 0,
//                       padding: EdgeInsets.zero,
//                       child: AppIcon(),
//                     ),