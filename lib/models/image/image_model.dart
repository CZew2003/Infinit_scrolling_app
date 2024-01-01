import 'package:freezed_annotation/freezed_annotation.dart';

import '../image_url/image_url_model.dart';
import '../user/user_model.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    @JsonKey(name: 'alt_description') required String description,
    @JsonKey(name: 'created_at') required String createdAt,
    required ImageUrlModel urls,
    required int likes,
    required UserModel user,
  }) = ImageModel$;

  factory ImageModel.fromJson(Map<dynamic, dynamic> json) => _$ImageModelFromJson(Map<String, dynamic>.from(json));
}
