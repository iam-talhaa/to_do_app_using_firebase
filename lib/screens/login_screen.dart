import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
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
          ElevatedButton(onPressed: () {}, child: Text('LOG IN')),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not Register yet!',
                ),
                TextButton(
                    onPressed: () {},
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
