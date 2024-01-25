import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user/user_model.dart';
import '../app_action.dart';

part 'set_user_data.freezed.dart';

@freezed
class SetUserData with _$SetUserData implements AppAction {
  const factory SetUserData(UserModel user) = SetUserDataStart;

  const factory SetUserData.successful() = SetUserDataSuccessful;

  @Implements<ErrorAction>()
  const factory SetUserData.error(Object error, StackTrace stackTrace) = SetUserDataError;
}
