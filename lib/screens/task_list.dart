import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_task.dart';
import 'package:to_do_app/screens/profile_screen.dart';

class task_list extends StatefulWidget {
  const task_list({super.key});

  @override
  State<task_list> createState() => _task_listState();
}

class _task_listState extends State<task_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => add_Task()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return profile_screen();
                }));
              },
              icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        ],
        backgroundColor: Color.fromARGB(171, 174, 135, 148),
        title: Text('TASK LIST '),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
