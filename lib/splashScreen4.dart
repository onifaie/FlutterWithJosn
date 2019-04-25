import 'dart:async';

import 'package:flutter/material.dart';

class splashScreen4 extends StatefulWidget {
  @override
  _splashScreen4State createState() => _splashScreen4State();
}

class _splashScreen4State extends State<splashScreen4> {


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

      appBar: AppBar(title: Text("this Splash Screen 4 "),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/myimag.jfif'),
            ),
            Text('this is Splash Screen 4 ' ,style: TextStyle(color: Colors.red,fontSize: 25.5),),

          ],
        ),
      ),
      
    );
  }
}