import 'package:freezed_annotation/freezed_annotation.dart';

import '../image/image_model.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(<ImageModel>[]) List<ImageModel> images,
    @Default(1) int page,
    @Default('') String lastQuery,
    @Default('') String lastColor,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
