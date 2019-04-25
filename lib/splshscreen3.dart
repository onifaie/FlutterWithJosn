import 'dart:async';

import 'package:flutter/material.dart';


class splashscreen3 extends StatefulWidget {
  @override
  _splashscreen3State createState() => _splashscreen3State();
}

class _splashscreen3State extends State<splashscreen3> {
  @override
  void initState() {

    Timer(Duration(seconds: 5),(){


      Navigator.of(context).pushNamed('/Home');

 super.initState();
    });
   
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("splash Screen 3 "),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/myimag.jfif'),
            ),
            Text('this screen splash 3 ',style: TextStyle(color: Colors.red,fontSize: 25.0),),
          ],
          
        ),
      ),
      
    );
  }
}