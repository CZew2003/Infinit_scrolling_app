import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/image/image_model.dart';
import '../app_action.dart';
part 'list_images.freezed.dart';

@freezed
class ListImages with _$ListImages implements AppAction {
  const factory ListImages({
    required int page,
  }) = ListImagesStart;

  const factory ListImages.successful(List<ImageModel> images) = ListImagesSuccessful;

  @Implements<ErrorAction>()
  const factory ListImages.error(Object error, StackTrace stackTrace) = ListImagesError;
}
