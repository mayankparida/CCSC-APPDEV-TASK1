import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "Hello!";
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$text',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0),
              ),
              RaisedButton(
                color: Colors.tealAccent,
                child: Text("CLICK HERE"),
                onPressed: () {
                  setState(() {
                    count++;
                    if (count % 2 == 0) {
                      text = "RA1911031010103";
                    } else {
                      text = "Hello!";
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}