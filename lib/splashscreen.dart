import 'dart:async';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {

    Timer(Duration(seconds: 5),(){

      Navigator.of(context).pushNamed('/Home');
       super.initState();
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(title: Text('Splasj Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/myimag.jfif'),
              
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('obeid',style: TextStyle(fontSize: 44.0,color: Colors.white)),
            )
            
          ],

        ),
      ),
      
    );
  }
}