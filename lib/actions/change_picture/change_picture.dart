import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user/user_model.dart';
import '../app_action.dart';

part 'change_picture.freezed.dart';

@freezed
class ChangePicture with _$ChangePicture implements AppAction {
  const factory ChangePicture({
    required String path,
    required String uid,
  }) = ChangePictureStart;

  const factory ChangePicture.successful(UserModel? user) = ChangePictureSuccessful;

  @Implements<ErrorAction>()
  const factory ChangePicture.error(Object error, StackTrace stackTrace) = ChangePictureError;
}
