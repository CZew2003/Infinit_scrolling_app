import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user/user_model.dart';
import '../app_action.dart';

part 'create_user.freezed.dart';

@freezed
class CreateUser with _$CreateUser implements AppAction {
  const factory CreateUser({
    required String email,
    required String password,
  }) = CreateUserStart;

  const factory CreateUser.successful(UserModel userModel) = CreateUserSuccessful;

  @Implements<ErrorAction>()
  const factory CreateUser.error(Object error, StackTrace stackTrace) = CreateUserError;
}
