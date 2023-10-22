import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {

  const TaskDetailScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hy')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(child: Text("Your Task",style: TextStyle(fontSize: 30),)),
          Card(
            child: Container(
              width: 500,
              height: 300,
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}
