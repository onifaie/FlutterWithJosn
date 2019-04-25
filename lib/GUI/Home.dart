import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obeid App'),
      ),
      body: Center(
        child: new ListView(
          children: <Widget>[
            obeidlist('obeid', Colors.red, 'any servers we wll be ok '),
                          new Divider(height: 15.0,color: Colors.red,),

            obeidlist('Servers', Colors.teal, 'Just tell me about your File '),
                          new Divider(height: 15.0,color: Colors.red,),

            obeidlist('CAll US ', Colors.blue, 'any servers we wll be ok '),
                          new Divider(height: 15.0,color: Colors.red,),

            obeidlist('Memubers ', Colors.orange, 'any servers we wll be ok '),
                          new Divider(height: 15.0,color: Colors.red,),

            obeidlist('Iformation', Colors.pink, 'any servers we wll be ok '),
                          new Divider(height: 15.0,color: Colors.red,),

            obeidlist('SEnd Email', Colors.black, 'any servers we wll be ok '),
            obeidlist('Employees', Colors.red, 'any servers we wll be ok '),
            obeidlist('PHone MArkting ', Colors.red, 'the markting about phone that well  '),
            obeidlist('books Labrary', Colors.red, 'any servers we wll be ok '),
            obeidlist('practices ', Colors.red, 'any servers we wll be ok '),
              new Divider(height: 15.0,color: Colors.red,),
          ],
        ),
      ),
    );
  }

  ListTile obeidlist(String mytext, Color mycolor, String mysutext) {
    return ListTile(
      title: Text(
        mytext,
        style: TextStyle(fontSize: 16.0, color: mycolor),
      ),
      leading: Icon(Icons.access_alarm),
      trailing: Icon(Icons.ac_unit),
      subtitle: Text(mysutext),
       
      onTap: () {
        print('its okkkkkk');
      },
    );
  
  }
}
