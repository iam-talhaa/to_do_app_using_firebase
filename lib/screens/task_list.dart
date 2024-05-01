import 'package:flutter/material.dart';

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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
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
