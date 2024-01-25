import 'package:freezed_annotation/freezed_annotation.dart';

import '../image/image_model.dart';
import '../review/review.dart';
import '../user/user_model.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(null) UserModel? user,
    ImageModel? selectedImage,
    @Default(false) bool isLoading,
    @Default(<ImageModel>[]) List<ImageModel> images,
    @Default(<UserModel>[]) List<UserModel> users,
    @Default(<Review>[]) List<Review> reviews,
    @Default(1) int page,
    @Default('') String query,
    @Default('') String color,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
