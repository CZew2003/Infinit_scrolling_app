import 'package:freezed_annotation/freezed_annotation.dart';

import 'links_model.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required LinksModel links,
    required String name,
  }) = UserModel$;

  factory UserModel.fromJson(Map<dynamic, dynamic> json) => _$UserModelFromJson(Map<String, dynamic>.from(json));
}
