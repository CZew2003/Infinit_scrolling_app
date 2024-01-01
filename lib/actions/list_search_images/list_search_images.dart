import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/image/image_model.dart';
import '../app_action.dart';

part 'list_search_images.freezed.dart';

@freezed
class ListSearchImages with _$ListSearchImages implements AppAction {
  const factory ListSearchImages({
    required int page,
    required String query,
    required String color,
  }) = ListSearchImagesStart;

  const factory ListSearchImages.successful(List<ImageModel> images) = ListSearchImagesSuccessful;

  @Implements<ErrorAction>()
  const factory ListSearchImages.error(Object error, StackTrace stackTrace) = ListSearchImagesError;
}
