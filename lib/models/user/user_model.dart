import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    required String email,
    required String displayName,
    String? pictureUrl,
  }) = UserModel$;

  factory UserModel.fromJson(Map<dynamic, dynamic> json) => _$UserModelFromJson(Map<String, dynamic>.from(json));
}
