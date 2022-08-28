import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_and_firebase_application_1/models/user.dart';


class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  MyUser? _userFromFirebaseUser(User? user){
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // Stream
  Stream<MyUser?> get user{
    return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user));
  }




  // sign in anonymously
  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password

  // register with email & password
  Future registerWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut()async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}