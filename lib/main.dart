import 'package:flutter/material.dart';

import 'registration_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Top 10 flutter Widgets'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Please Enter Email Address',
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Please Enter Password',
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewScreen()),
              );
            },
            child: Center(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    // border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text('Login')),
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
