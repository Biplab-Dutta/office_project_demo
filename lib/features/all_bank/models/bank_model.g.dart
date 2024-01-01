// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankModel _$BankModelFromJson(Map<String, dynamic> json) => BankModel(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => BankRecordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BankModelToJson(BankModel instance) => <String, dynamic>{
      'records': instance.records?.map((e) => e.toJson()).toList(),
    };

BankRecordModel _$BankRecordModelFromJson(Map<String, dynamic> json) =>
    BankRecordModel(
      idx: json['idx'] as String,
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      imageUrl: json['logo'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$BankRecordModelToJson(BankRecordModel instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'name': instance.name,
      'short_name': instance.shortName,
      'logo': instance.imageUrl,
      'address': instance.address,
    };
