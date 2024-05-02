import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_task.dart';
import 'package:to_do_app/screens/sign_up_screen.dart';
import 'package:to_do_app/screens/task_list.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  var s_email_Controller = TextEditingController();
  var s_passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN SCREEN'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOG IN ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              controller: s_email_Controller,
              decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              controller: s_passwordController,
              decoration: InputDecoration(
                  hintText: 'PASSWORD',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                var email = s_email_Controller.text.trim();
                var pass = s_email_Controller.text.trim();

                if (email.isEmpty || pass.isEmpty) {
                  //show error toast

                  return;
                }
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return task_list();
                }));
              },
              child: Text('LOG IN')),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not Register yet!',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => sign_up_screen()));
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
