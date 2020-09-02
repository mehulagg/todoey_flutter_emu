import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  // final Function addTaskCallback;

  // const AddTaskScreen(this.addTaskCallback);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 40.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                  print('onChanged $newText');
                },
              ),
              Text(newTaskTitle),
              FlatButton(
                onPressed: () {
                  print(newTaskTitle);
                },
                color: Colors.lightBlueAccent,
                child: Text('add task'),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
