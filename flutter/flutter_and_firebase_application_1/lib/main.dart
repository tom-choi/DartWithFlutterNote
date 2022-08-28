import 'package:flutter/material.dart';
import 'package:flutter_and_firebase_application_1/models/user.dart';
import 'package:flutter_and_firebase_application_1/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_and_firebase_application_1/services/auth.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}