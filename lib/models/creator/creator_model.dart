import 'package:freezed_annotation/freezed_annotation.dart';

import '../links/links_model.dart';
part 'creator_model.freezed.dart';
part 'creator_model.g.dart';

@freezed
class CreatorModel with _$CreatorModel {
  const factory CreatorModel({
    required LinksModel links,
    required String name,
  }) = CreatorModel$;

  factory CreatorModel.fromJson(Map<dynamic, dynamic> json) => _$CreatorModelFromJson(Map<String, dynamic>.from(json));
}
