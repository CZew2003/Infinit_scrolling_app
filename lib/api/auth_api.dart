import 'package:firebase_auth/firebase_auth.dart';

import '../models/user/user_model.dart';

class AuthApi {
  AuthApi({required FirebaseAuth auth}) : _auth = auth;

  final FirebaseAuth _auth;

  Future<UserModel> createUser({
    required String email,
    required String password,
  }) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final String displayName = email.split('@').first;

    return UserModel(
      email: email,
      displayName: displayName,
    );
  }
}
