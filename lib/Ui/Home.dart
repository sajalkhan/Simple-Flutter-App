import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent.shade400,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint("Email Tapped!"),
            ),
            IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () => debugPrint("Email Tapped!"),
            )
          ],
        ),
        backgroundColor: Colors.green.shade800,
//      body: Center(
//        child: Text('Hello Flutter',textDirection: TextDirection.ltr,
//        style: TextStyle(
//          fontSize: 25,
//          fontWeight: FontWeight.w500,
//          fontStyle: FontStyle.italic,
//          color: Colors.white,
//        ),),
//      ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Text(
                  'Click me',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Colors.amberAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightGreen,
      child: Center(
          child: Text(
        'Hello Flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            fontSize: 23.5),
      )),
    );
  }
}
