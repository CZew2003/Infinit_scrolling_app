import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/user/user_model.dart';

class UsersContainer extends StatelessWidget {
  const UsersContainer({super.key, required this.builder});

  final ViewModelBuilder<List<UserModel>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<UserModel>>(
      converter: (Store<AppState> store) {
        return store.state.users;
      },
      builder: builder,
    );
  }
}
