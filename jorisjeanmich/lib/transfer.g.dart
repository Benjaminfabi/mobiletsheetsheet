// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Truc _$TrucFromJson(Map<String, dynamic> json) {
  return Truc()
    ..year = json['year'] as int?
    ..month = json['month'] as int?
    ..day = json['day'] as int?
    ..dayword = json['dayword'] as String?;
}

Map<String, dynamic> _$TrucToJson(Truc instance) => <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'dayword': instance.dayword,
    };
