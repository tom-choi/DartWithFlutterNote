import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_firebase_application_1/screens/authenticate/authenticate.dart';
import 'package:flutter_and_firebase_application_1/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_and_firebase_application_1/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);
    print(user);

    if (user == null)
    {
      return Authenticate();
    }
    else
    {
      return Home();
    }
  
    // return either Home or Authenticate widget
    //return Authenticate();
  }
}