import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../actions/change_picture/change_picture.dart';
import '../actions/sign_out/sign_out.dart';
import '../models/user/user_model.dart';
import '../util/extensions.dart';
import 'container/client_container.dart';
import 'user_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String route = '/profileScreen';

  @override
  Widget build(BuildContext context) {
    return ClientContainer(
      builder: (BuildContext context, UserModel? user) {
        if (user == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    final ImagePicker imagePicker = ImagePicker();
                    await imagePicker
                        .pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024)
                        .then((XFile? file) {
                      if (file != null) {
                        context.dispatch(ChangePicture(path: file.path, uid: user.uid));
                      }
                    });
                  },
                  child: UserAvatar(
                    user: user,
                    radius: 128,
                    fontSize: 120,
                  ),
                ),
                const SizedBox(height: 32, width: double.infinity),
                Text(
                  user.displayName,
                  style: const TextStyle(fontSize: 48.0),
                ),
                const SizedBox(height: 16),
                Text(
                  user.email,
                  style: const TextStyle(fontSize: 24.0),
                ),
                const SizedBox(height: 32),
                TextButton(
                  child: const Text('Sign out'),
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Sign out'),
                          content: const Text('Are you sure you want to sign out?'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              child: const Text('Sign out'),
                              onPressed: () {
                                context.dispatch(const SignOut());
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
