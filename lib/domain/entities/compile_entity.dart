// To parse this JSON data, do
//
//     final compileEntity = compileEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'compile_entity.freezed.dart';

part 'compile_entity.g.dart';

CompileEntity compileEntityFromJson(String str) =>
    CompileEntity.fromJson(json.decode(str));

String compileEntityToJson(CompileEntity data) => json.encode(data.toJson());

@freezed
class CompileEntity with _$CompileEntity {
  const factory CompileEntity({
    required String language,
    required String version,
    required Run run,
  }) = _CompileEntity;

  factory CompileEntity.fromJson(Map<String, dynamic> json) =>
      _$CompileEntityFromJson(json);
}

@freezed
class Run with _$Run {
  const factory Run({
    required String stdout,
    required String stderr,
    required int code,
    required dynamic signal,
    required String output,
  }) = _Run;

  factory Run.fromJson(Map<String, dynamic> json) => _$RunFromJson(json);
}
