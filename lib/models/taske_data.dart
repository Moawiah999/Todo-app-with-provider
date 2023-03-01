import 'package:flutter/material.dart';
import 'package:todoapp/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go to gym"),
    Task(name: "go to car"),
    Task(name: "go to shope"),
  ];

  void addtaske(String newtasketitel) {
    tasks.add(Task(name: newtasketitel));
    notifyListeners();
  }
}
