import 'package:flutter/material.dart';
import 'package:todoapp/screen/task_screen.dart';
import 'package:provider/provider.dart';

import 'models/taske_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
