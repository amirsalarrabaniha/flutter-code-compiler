// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompileEntityImpl _$$CompileEntityImplFromJson(Map<String, dynamic> json) =>
    _$CompileEntityImpl(
      language: json['language'] as String,
      version: json['version'] as String,
      run: Run.fromJson(json['run'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompileEntityImplToJson(_$CompileEntityImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'version': instance.version,
      'run': instance.run,
    };

_$RunImpl _$$RunImplFromJson(Map<String, dynamic> json) => _$RunImpl(
      stdout: json['stdout'] as String,
      stderr: json['stderr'] as String,
      code: (json['code'] as num).toInt(),
      signal: json['signal'],
      output: json['output'] as String,
    );

Map<String, dynamic> _$$RunImplToJson(_$RunImpl instance) => <String, dynamic>{
      'stdout': instance.stdout,
      'stderr': instance.stderr,
      'code': instance.code,
      'signal': instance.signal,
      'output': instance.output,
    };
