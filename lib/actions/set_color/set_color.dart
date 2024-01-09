import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';
part 'set_color.freezed.dart';

@freezed
class SetColor with _$SetColor implements AppAction {
  const factory SetColor(String color) = SetColor$;
}
