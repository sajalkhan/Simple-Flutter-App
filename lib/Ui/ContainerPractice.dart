import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Container Practice', style: TextStyle(fontSize: 25, color: Colors.deepOrange),),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          backgroundColor: Colors.green.shade900,
          body: Column(
            //------------------------------ https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e -----------------------//
            //mainAxisSize: MainAxisSize.min, // it will contain only the required space
            //mainAxisSize: MainAxisSize.max,  // it will take maximum space of a column
            //verticalDirection: VerticalDirection.up, // it will change the direction of a container lower to upper side and reverse the container
            //verticalDirection: VerticalDirection.down, // it will change the direction up to lower and it's a default setting
            //mainAxisAlignment: MainAxisAlignment.start, // it will show alignment from the starting position of a column
            //mainAxisAlignment: MainAxisAlignment.end, // it will show alignment from the ending position of a column
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // it will take equal space(up & down size)  of the container inside a column
            //mainAxisAlignment: MainAxisAlignment.spaceBetween, // it will take space between all of the container
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.end, // it will push all the container horizontally end of each row
            //crossAxisAlignment: CrossAxisAlignment.start, // it will push all the container horizontally start of each row
            //crossAxisAlignment: CrossAxisAlignment.stretch, // it will take all of the space horizontally
            children: <Widget>[
              Container(
                height: 100,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20.0),
                width: 100,
                color: Colors.redAccent,
                child: Text('Container 1'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text('Container 2'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Text('Container 3'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Text('Container 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
