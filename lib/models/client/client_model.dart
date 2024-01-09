import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
class ClientModel with _$ClientModel {
  const factory ClientModel({
    required String email,
    required String displayName,
    String? pictureUrl,
  }) = ClientModel$;

  factory ClientModel.fromJson(Map<dynamic, dynamic> json) => _$ClientModelFromJson(Map<String, dynamic>.from(json));
}
