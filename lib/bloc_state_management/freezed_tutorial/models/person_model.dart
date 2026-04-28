

import 'package:freezed_annotation/freezed_annotation.dart';
part 'person_model.freezed.dart';
part 'person_model.g.dart';

@Freezed()
class PersonModel with _$PersonModel{

  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PersonModel({
    @Default('') String? name,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String , dynamic> json) => _$PersonModelFromJson(json);

  @override
  String? get name => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

}


// COMMAND TO RUN - dart run build_runner build