import 'package:flutter/material.dart';
import 'package:flutter_and_firebase_application_1/services/auth.dart';

class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);

  final AuthService _auth =  AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('firebase_application_1'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async{
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text('logout'))
        ],
      ),
    );
  }
}