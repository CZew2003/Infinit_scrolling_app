import 'package:flutter/material.dart';

import '../models/user/user_model.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.user, this.radius = 24, this.fontSize = 20});

  final UserModel user;
  final double radius;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: user.pictureUrl != null ? NetworkImage(user.pictureUrl!) : null,
      backgroundColor: Colors.amber,
      child: user.pictureUrl != null
          ? null
          : Text(
              user.displayName.split('').take(1).join().toUpperCase(),
              style: TextStyle(fontSize: fontSize, color: Colors.lightBlue),
            ),
    );
  }
}
