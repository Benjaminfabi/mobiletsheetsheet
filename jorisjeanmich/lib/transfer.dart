import 'package:json_annotation/json_annotation.dart';

part 'transfer.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Truc {

  Truc();

  int? year;
  int? month;
  int? day;
  String? dayword;

  factory Truc.fromJson(Map<String, dynamic> json) => _$TrucFromJson(json);
  Map<String, dynamic> toJson() => _$TrucToJson(this);
}
//flutter pub run build_runner build