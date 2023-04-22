import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasky/model/boxs.dart';
import 'package:tasky/model/tasks.dart';
import '../app_color.dart';
import 'list_tail_widget.dart';
class ListViewWidget extends StatefulWidget {
//  List tasks;
   ListViewWidget({
  //   required this.tasks,
    super.key,
  });

   bool isChecked=false;

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.builder(
        reverse: false,
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        itemCount: taskBox.length,
        itemBuilder: (context, index) {
          Tasks tasks =taskBox.getAt(index);
          return Container(
            margin: EdgeInsets.all(5),
            color: AppColor.mainAppColor,
            child: ListTailWidget(
              taskName:tasks.taskName,//widget.tasks[index].taskName ,
              isChecked: tasks.isDone,//widget.tasks[index].isDone,//widget.isChecked,
              checkBoxTap: (bool? value) {
                setState(() {

                  tasks.toggleDone();//widget.isChecked = value!;
                });
                taskBox.put('key_${tasks.taskName}', Tasks(taskName: tasks.taskName,isDone: value!));
                print('key_${tasks.taskName}');
              },
              iconTap:() {
                setState(() {
                  taskBox.deleteAt(index);
                });
              }
            ),
          );
        },),
    );
  }
}


// Container(
// margin: EdgeInsets.all(5),
// color: AppColor.mainAppColor,
// 'key_${tasks.taskName}'