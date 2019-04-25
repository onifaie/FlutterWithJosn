// import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pro2/user.dart';

class Network {
  String url = "https://reqres.in/api/users";

  List<Myuser> users = [];

  Future <List<Myuser>> fetchuser() async {
    final res = await http.get(url,headers: {"Accept": 'application/josn'});
    final jsonData = json.decode(res.body);

    final  mydata = jsonData['data'];

    for (var u in  mydata) {
      Myuser user = Myuser(
          id: u['id'],
          first_name: u['first_name'],
          last_name: u['last_name'],
          avatar: u['avatar']);
      users.add(user);
    }
    if (res.statusCode == 200) {
        return  users;
      } else {
        return users;
      }
    }
  }

