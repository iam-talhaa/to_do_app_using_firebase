import 'package:flutter/material.dart';

class add_Task extends StatefulWidget {
  const add_Task({super.key});

  @override
  State<add_Task> createState() => _add_TaskState();
}

class _add_TaskState extends State<add_Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'TEXT',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('SAVE'),
          )
        ],
      ),
    );
  }
}
