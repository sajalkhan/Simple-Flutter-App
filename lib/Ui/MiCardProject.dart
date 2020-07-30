import 'package:flutter/material.dart';

class MiCardProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent.shade700,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/sajal.jpg'),
                ),
                Text('Sohrab Hossain',style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Pacifico',
                  color: Colors.white
                ),),
                Text('FLUTTER DEVELOPER',style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurpleAccent.shade200
                ),),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.deepPurpleAccent.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0
                  ),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.deepPurpleAccent.shade700,),
                    title: Text('+880-1740980351', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepPurpleAccent.shade700
                    ),),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0
                  ),
                  child: ListTile(
                    leading:  Icon(Icons.email, color: Colors.deepPurpleAccent.shade700,),
                    title: Text('md.soharubhossen@gmail.com', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepPurpleAccent.shade700
                    ),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
