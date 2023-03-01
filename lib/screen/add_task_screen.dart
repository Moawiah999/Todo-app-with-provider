import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taske_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});
  String? newtasketitel;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo[400],
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addtaske(newtasketitel!);
                Navigator.pop(context);
              },
              child: Text("Add"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[400],
                  foregroundColor: Colors.white),
            )
          ],
        ));
  }
}
