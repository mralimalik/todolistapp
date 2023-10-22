import 'package:flutter/material.dart';
import 'package:todolistapp/screens/createtask_screen.dart';
import 'package:todolistapp/screens/taskdetail_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Ali'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateTask()));
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          //Show Task
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TaskDetailScreen()));
                      },
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('hu'),
                              ],
                            ),
                            Row(
                              children: [
                                Text("12:34am"),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.more_vert_sharp)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

}
