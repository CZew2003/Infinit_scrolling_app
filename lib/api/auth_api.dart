import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/user/user_model.dart';

class AuthApi {
  AuthApi({required FirebaseAuth auth, required FirebaseStorage storage})
      : _auth = auth,
        _storage = storage;

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;

  Future<UserModel?> changeProfilePicture({required String uid, required String path}) async {
    final ref = _storage.ref('users/$uid/profile.jpg');
    await ref.putFile(File(path));
    final String url = await ref.getDownloadURL();

    await _auth.currentUser!.updatePhotoURL(url);
    return _extractUser();
  }

  Future<UserModel?> signIn({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _extractUser();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<UserModel?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user != null) {
      return _extractUser();
    }
    return null;
  }

  Future<UserModel> createUser({required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);

    return _extractUser();
  }

  UserModel _extractUser() {
    final User user = _auth.currentUser!;
    final String email = user.email!;
    final String displayName = email.split('@').first;
    return UserModel(
      uid: user.uid,
      email: email,
      displayName: displayName,
      pictureUrl: user.photoURL,
    );
  }
}
