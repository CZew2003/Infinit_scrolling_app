import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_url_model.freezed.dart';
part 'image_url_model.g.dart';

@freezed
class ImageUrlModel with _$ImageUrlModel {
  const factory ImageUrlModel({
    @JsonKey(name: 'small') required String smallImage,
  }) = ImageUrlModel$;

  factory ImageUrlModel.fromJson(Map<dynamic, dynamic> json) =>
      _$ImageUrlModelFromJson(Map<String, dynamic>.from(json));
}
