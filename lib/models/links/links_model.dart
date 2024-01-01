import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_model.freezed.dart';
part 'links_model.g.dart';

@freezed
class LinksModel with _$LinksModel {
  const factory LinksModel({
    required String html,
  }) = LinksModel$;

  factory LinksModel.fromJson(Map<dynamic, dynamic> json) => _$LinksModelFromJson(Map<String, dynamic>.from(json));
}
