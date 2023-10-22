import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Enter Task Title : ',
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: _titleController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            Text(
              'Enter Description : ',
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: _descriptionController,

                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: () async {

              Navigator.pop(context); // Go back to home screen
            }, child: Text("Create Task")),
          ],
        ),
      ),
    );
  }
}
