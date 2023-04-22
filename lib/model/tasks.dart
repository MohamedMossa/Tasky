import 'package:hive_flutter/hive_flutter.dart';

import 'boxs.dart';
part 'tasks.g.dart';



@HiveType(typeId: 1)
class Tasks {
  @HiveField(0)
  final String taskName;
  @HiveField(1)
  bool isDone;
  Tasks({required this.taskName,this.isDone=false});
  @HiveField(3)
  void toggleDone(){
    isDone=!isDone;
  }
}