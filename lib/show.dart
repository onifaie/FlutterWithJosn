import 'package:charcode/ascii.dart';
import 'package:flutter/material.dart';
import 'user.dart';
import 'Network.dart';
import 'package:intl/intl.dart';


class Show extends StatefulWidget {
  @override
  _showState createState() => _showState();
}

class _showState extends State<Show> {

  

  @override
  Widget build(BuildContext context) {
    
DateTime now = DateTime.now();
String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);

    print(Network().fetchuser());
    return Scaffold(
      appBar: AppBar(
        title: Text('JosnFile'),
      ),
      body: Center(
        child: Padding(

          padding: const EdgeInsets.only(top:55.0),
          
          child: FutureBuilder(

            future: Network().fetchuser(),
            builder: (BuildContext context, AsyncSnapshot snap) {
              if (snap.data == null) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                return ListView.builder(
                  
                    // shrinkWrap: true,


                    itemCount: snap.data.length,
                    itemBuilder: (BuildContext context, int i) {
                      // initState();
                      int f=snap.data.length;


                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        
                        child: ListTile(
                          
                          trailing: Column(
                            children: <Widget>[
                              Icon(Icons.edit ,color: Colors.red,),
                              Text('$formattedDate')
                            ],
                          ),
                          leading: CircleAvatar(
                            radius: 20,
                            
                            backgroundImage: NetworkImage(snap.data[i].avatar ),
                          ),
                          title: Text(snap.data[i].first_name ,style: TextStyle(fontSize: 18),),
                          subtitle: Text('${snap.data[i].last_name} $formattedDate' ,style: TextStyle(color: Colors.red)),

                          
                          
                          
                          
                        
                        ),
                        
                      );
                     
                    });
                    
              }
            },
          ),
        ),
        
      ),
      
    );
  }
}
