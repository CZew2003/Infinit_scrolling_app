import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/image/image_model.dart';
import '../app_action.dart';

part 'select_image.freezed.dart';

@freezed
class SelectImage with _$SelectImage implements AppAction {
  const factory SelectImage(ImageModel image) = SelectImageStart$;
}
