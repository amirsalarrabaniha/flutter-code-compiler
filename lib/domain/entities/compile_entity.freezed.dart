// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompileEntity _$CompileEntityFromJson(Map<String, dynamic> json) {
  return _CompileEntity.fromJson(json);
}

/// @nodoc
mixin _$CompileEntity {
  String get language => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  Run get run => throw _privateConstructorUsedError;

  /// Serializes this CompileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompileEntityCopyWith<CompileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompileEntityCopyWith<$Res> {
  factory $CompileEntityCopyWith(
          CompileEntity value, $Res Function(CompileEntity) then) =
      _$CompileEntityCopyWithImpl<$Res, CompileEntity>;
  @useResult
  $Res call({String language, String version, Run run});

  $RunCopyWith<$Res> get run;
}

/// @nodoc
class _$CompileEntityCopyWithImpl<$Res, $Val extends CompileEntity>
    implements $CompileEntityCopyWith<$Res> {
  _$CompileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? version = null,
    Object? run = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      run: null == run
          ? _value.run
          : run // ignore: cast_nullable_to_non_nullable
              as Run,
    ) as $Val);
  }

  /// Create a copy of CompileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RunCopyWith<$Res> get run {
    return $RunCopyWith<$Res>(_value.run, (value) {
      return _then(_value.copyWith(run: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompileEntityImplCopyWith<$Res>
    implements $CompileEntityCopyWith<$Res> {
  factory _$$CompileEntityImplCopyWith(
          _$CompileEntityImpl value, $Res Function(_$CompileEntityImpl) then) =
      __$$CompileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, String version, Run run});

  @override
  $RunCopyWith<$Res> get run;
}

/// @nodoc
class __$$CompileEntityImplCopyWithImpl<$Res>
    extends _$CompileEntityCopyWithImpl<$Res, _$CompileEntityImpl>
    implements _$$CompileEntityImplCopyWith<$Res> {
  __$$CompileEntityImplCopyWithImpl(
      _$CompileEntityImpl _value, $Res Function(_$CompileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? version = null,
    Object? run = null,
  }) {
    return _then(_$CompileEntityImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      run: null == run
          ? _value.run
          : run // ignore: cast_nullable_to_non_nullable
              as Run,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompileEntityImpl implements _CompileEntity {
  const _$CompileEntityImpl(
      {required this.language, required this.version, required this.run});

  factory _$CompileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompileEntityImplFromJson(json);

  @override
  final String language;
  @override
  final String version;
  @override
  final Run run;

  @override
  String toString() {
    return 'CompileEntity(language: $language, version: $version, run: $run)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompileEntityImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.run, run) || other.run == run));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, version, run);

  /// Create a copy of CompileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompileEntityImplCopyWith<_$CompileEntityImpl> get copyWith =>
      __$$CompileEntityImplCopyWithImpl<_$CompileEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompileEntityImplToJson(
      this,
    );
  }
}

abstract class _CompileEntity implements CompileEntity {
  const factory _CompileEntity(
      {required final String language,
      required final String version,
      required final Run run}) = _$CompileEntityImpl;

  factory _CompileEntity.fromJson(Map<String, dynamic> json) =
      _$CompileEntityImpl.fromJson;

  @override
  String get language;
  @override
  String get version;
  @override
  Run get run;

  /// Create a copy of CompileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompileEntityImplCopyWith<_$CompileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Run _$RunFromJson(Map<String, dynamic> json) {
  return _Run.fromJson(json);
}

/// @nodoc
mixin _$Run {
  String get stdout => throw _privateConstructorUsedError;
  String get stderr => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  dynamic get signal => throw _privateConstructorUsedError;
  String get output => throw _privateConstructorUsedError;

  /// Serializes this Run to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Run
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RunCopyWith<Run> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunCopyWith<$Res> {
  factory $RunCopyWith(Run value, $Res Function(Run) then) =
      _$RunCopyWithImpl<$Res, Run>;
  @useResult
  $Res call(
      {String stdout, String stderr, int code, dynamic signal, String output});
}

/// @nodoc
class _$RunCopyWithImpl<$Res, $Val extends Run> implements $RunCopyWith<$Res> {
  _$RunCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Run
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stdout = null,
    Object? stderr = null,
    Object? code = null,
    Object? signal = freezed,
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      stdout: null == stdout
          ? _value.stdout
          : stdout // ignore: cast_nullable_to_non_nullable
              as String,
      stderr: null == stderr
          ? _value.stderr
          : stderr // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      signal: freezed == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RunImplCopyWith<$Res> implements $RunCopyWith<$Res> {
  factory _$$RunImplCopyWith(_$RunImpl value, $Res Function(_$RunImpl) then) =
      __$$RunImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stdout, String stderr, int code, dynamic signal, String output});
}

/// @nodoc
class __$$RunImplCopyWithImpl<$Res> extends _$RunCopyWithImpl<$Res, _$RunImpl>
    implements _$$RunImplCopyWith<$Res> {
  __$$RunImplCopyWithImpl(_$RunImpl _value, $Res Function(_$RunImpl) _then)
      : super(_value, _then);

  /// Create a copy of Run
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stdout = null,
    Object? stderr = null,
    Object? code = null,
    Object? signal = freezed,
    Object? output = null,
  }) {
    return _then(_$RunImpl(
      stdout: null == stdout
          ? _value.stdout
          : stdout // ignore: cast_nullable_to_non_nullable
              as String,
      stderr: null == stderr
          ? _value.stderr
          : stderr // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      signal: freezed == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RunImpl implements _Run {
  const _$RunImpl(
      {required this.stdout,
      required this.stderr,
      required this.code,
      required this.signal,
      required this.output});

  factory _$RunImpl.fromJson(Map<String, dynamic> json) =>
      _$$RunImplFromJson(json);

  @override
  final String stdout;
  @override
  final String stderr;
  @override
  final int code;
  @override
  final dynamic signal;
  @override
  final String output;

  @override
  String toString() {
    return 'Run(stdout: $stdout, stderr: $stderr, code: $code, signal: $signal, output: $output)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RunImpl &&
            (identical(other.stdout, stdout) || other.stdout == stdout) &&
            (identical(other.stderr, stderr) || other.stderr == stderr) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.signal, signal) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stdout, stderr, code,
      const DeepCollectionEquality().hash(signal), output);

  /// Create a copy of Run
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RunImplCopyWith<_$RunImpl> get copyWith =>
      __$$RunImplCopyWithImpl<_$RunImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RunImplToJson(
      this,
    );
  }
}

abstract class _Run implements Run {
  const factory _Run(
      {required final String stdout,
      required final String stderr,
      required final int code,
      required final dynamic signal,
      required final String output}) = _$RunImpl;

  factory _Run.fromJson(Map<String, dynamic> json) = _$RunImpl.fromJson;

  @override
  String get stdout;
  @override
  String get stderr;
  @override
  int get code;
  @override
  dynamic get signal;
  @override
  String get output;

  /// Create a copy of Run
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RunImplCopyWith<_$RunImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
