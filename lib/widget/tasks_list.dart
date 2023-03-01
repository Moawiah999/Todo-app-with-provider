import 'package:flutter/material.dart';
import 'package:todoapp/models/taske_data.dart';
import 'package:todoapp/widget/task_list.dart';
import 'package:provider/provider.dart';
import '../models/Task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdtat, child) {
        return ListView.builder(
          itemCount: taskdtat.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskdtat.tasks[index].isdone,
                taskTitle: taskdtat.tasks[index].name,
                checkboxChange: (newvaluo) {
                  // setState(() {
                  //   tasks[index].doneChange();
                  // });
                });
          },
        );
      },
    );
  }
}
