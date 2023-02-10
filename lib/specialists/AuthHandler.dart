import 'package:firebase_auth/firebase_auth.dart';

class AuthHandler{
  User? user;

  AuthHandler() {
    user = FirebaseAuth.instance.currentUser;
  }
  Future<String?> getAccessToken() async {
    var accessToken = await user?.getIdToken();
    return accessToken;
  }

  User? getUser(){
    return user;
  }

}