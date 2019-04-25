import 'package:flutter/material.dart';

import 'GUI/Home.dart';
// import 'splashscreen.dart';
// import 'splashscreen2.dart';
// import 'splshscreen3.dart';
// import 'splashScreen4.dart';
import 'show.dart';

void main() => runApp(MaterialApp(
  
home: Show(),



routes: <String,WidgetBuilder>{

  '/Home':(BuildContext context)=>Home()

}

)


);



// create new page splash Screen ( splashScreen4 & picture  )
// function 5 scand then go to Home Page ( Home )
// Routeing how we can write the good way to Route ( create inside Main Function )

