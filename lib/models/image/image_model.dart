import 'package:freezed_annotation/freezed_annotation.dart';

import '../creator/creator_model.dart';
import '../image_url/image_url_model.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required String id,
    @JsonKey(name: 'alt_description') required String description,
    @JsonKey(name: 'created_at') required String createdAt,
    required ImageUrlModel urls,
    required int likes,
    @JsonKey(name: 'user') required CreatorModel creatorModel,
  }) = ImageModel$;

  factory ImageModel.fromJson(Map<dynamic, dynamic> json) => _$ImageModelFromJson(Map<String, dynamic>.from(json));
}
