import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/client/client_model.dart';

class AuthApi {
  AuthApi({required FirebaseAuth auth}) : _auth = auth;

  final FirebaseAuth _auth;

  Future<ClientModel> createUser({
    required String email,
    required String password,
  }) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final String displayName = email.split('@').first;

    return ClientModel(
      email: email,
      displayName: displayName,
    );
  }
}
