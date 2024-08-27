import 'package:firebase_auth/firebase_auth.dart';


class FirebaseAuthService{
  // ignore: unused_field, prefer_final_fields
  FirebaseAuth _auth = FirebaseAuth.instance;

  // ignore: body_might_complete_normally_nullable
  Future<User?> signupWithEmailAndPassword(String username,String email,String password) async{

    try {

      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }catch (e) {
      print("Some error occured");
    }

      return null;

  }

    Future<User?> signInWithEmailAndPassword(String email,String password) async{

    try {

      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }catch (e) {
      print("Some error occured");
    }

      return null;
      
  }




}