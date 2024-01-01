import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_model.g.dart';

@JsonSerializable()
class BankModel extends Equatable {
  const BankModel({required this.records});

  final List<BankRecordModel>? records;

  factory BankModel.fromJson(Map<String, dynamic> json) {
    return _$BankModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BankModelToJson(this);

  @override
  List<Object?> get props => [records];
}

@JsonSerializable()
class BankRecordModel extends Equatable {
  const BankRecordModel({
    required this.idx,
    required this.name,
    required this.shortName,
    required this.imageUrl,
    required this.address,
  });

  final String idx;
  final String? name;
  final String? shortName;
  @JsonKey(name: 'logo')
  final String? imageUrl;
  final String? address;

  factory BankRecordModel.fromJson(Map<String, dynamic> json) {
    return _$BankRecordModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BankRecordModelToJson(this);

  @override
  List<Object?> get props => [idx, name, shortName, imageUrl, address];
}
