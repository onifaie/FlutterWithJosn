import 'dart:async';

import 'package:flutter/material.dart';




class splashscreen2 extends StatefulWidget {
  @override
  _splashscreen2State createState() => _splashscreen2State();
}

class _splashscreen2State extends State<splashscreen2> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){

      Navigator.of(context).pushNamed('/Home');
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text('Splashscreen2'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            CircleAvatar(
              radius: 88,
              backgroundImage: AssetImage('assets/myimag.jfif'),
             
            ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('this splashScreen 2 ....',style: TextStyle(color: Colors.white,fontSize: 20.5),),
              ),
          ],
          
        ),
      ),
      
    );
  }
}