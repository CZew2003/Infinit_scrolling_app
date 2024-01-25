import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user/user_model.dart';
import '../app_action.dart';

part 'sign_in.freezed.dart';

@freezed
class SignIn with _$SignIn implements AppAction {
  const factory SignIn({
    required String email,
    required String password,
    required ActionResult result,
  }) = SignInStart;

  const factory SignIn.successful(UserModel? user) = SignInSuccessful;

  @Implements<ErrorAction>()
  const factory SignIn.error(Object error, StackTrace stackTrace) = SignInError;
}
