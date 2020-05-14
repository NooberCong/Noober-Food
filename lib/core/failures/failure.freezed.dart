// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

  _NoConnectionFailure noconnection() {
    return _NoConnectionFailure();
  }

  _ServerFailure server() {
    return _ServerFailure();
  }

  _UnknownFailure unknown() {
    return _UnknownFailure();
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noconnection(),
    @required Result server(),
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noconnection(),
    Result server(),
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noconnection(_NoConnectionFailure value),
    @required Result server(_ServerFailure value),
    @required Result unknown(_UnknownFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noconnection(_NoConnectionFailure value),
    Result server(_ServerFailure value),
    Result unknown(_UnknownFailure value),
    @required Result orElse(),
  });
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

abstract class _$NoConnectionFailureCopyWith<$Res> {
  factory _$NoConnectionFailureCopyWith(_NoConnectionFailure value,
          $Res Function(_NoConnectionFailure) then) =
      __$NoConnectionFailureCopyWithImpl<$Res>;
}

class __$NoConnectionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$NoConnectionFailureCopyWith<$Res> {
  __$NoConnectionFailureCopyWithImpl(
      _NoConnectionFailure _value, $Res Function(_NoConnectionFailure) _then)
      : super(_value, (v) => _then(v as _NoConnectionFailure));

  @override
  _NoConnectionFailure get _value => super._value as _NoConnectionFailure;
}

class _$_NoConnectionFailure implements _NoConnectionFailure {
  _$_NoConnectionFailure();

  @override
  String toString() {
    return 'Failure.noconnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noconnection(),
    @required Result server(),
    @required Result unknown(),
  }) {
    assert(noconnection != null);
    assert(server != null);
    assert(unknown != null);
    return noconnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noconnection(),
    Result server(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noconnection != null) {
      return noconnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noconnection(_NoConnectionFailure value),
    @required Result server(_ServerFailure value),
    @required Result unknown(_UnknownFailure value),
  }) {
    assert(noconnection != null);
    assert(server != null);
    assert(unknown != null);
    return noconnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noconnection(_NoConnectionFailure value),
    Result server(_ServerFailure value),
    Result unknown(_UnknownFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noconnection != null) {
      return noconnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnectionFailure implements Failure {
  factory _NoConnectionFailure() = _$_NoConnectionFailure;
}

abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
}

class __$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;
}

class _$_ServerFailure implements _ServerFailure {
  _$_ServerFailure();

  @override
  String toString() {
    return 'Failure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noconnection(),
    @required Result server(),
    @required Result unknown(),
  }) {
    assert(noconnection != null);
    assert(server != null);
    assert(unknown != null);
    return server();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noconnection(),
    Result server(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noconnection(_NoConnectionFailure value),
    @required Result server(_ServerFailure value),
    @required Result unknown(_UnknownFailure value),
  }) {
    assert(noconnection != null);
    assert(server != null);
    assert(unknown != null);
    return server(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noconnection(_NoConnectionFailure value),
    Result server(_ServerFailure value),
    Result unknown(_UnknownFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  factory _ServerFailure() = _$_ServerFailure;
}

abstract class _$UnknownFailureCopyWith<$Res> {
  factory _$UnknownFailureCopyWith(
          _UnknownFailure value, $Res Function(_UnknownFailure) then) =
      __$UnknownFailureCopyWithImpl<$Res>;
}

class __$UnknownFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnknownFailureCopyWith<$Res> {
  __$UnknownFailureCopyWithImpl(
      _UnknownFailure _value, $Res Function(_UnknownFailure) _then)
      : super(_value, (v) => _then(v as _UnknownFailure));

  @override
  _UnknownFailure get _value => super._value as _UnknownFailure;
}

class _$_UnknownFailure implements _UnknownFailure {
  _$_UnknownFailure();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noconnection(),
    @required Result server(),
    @required Result unknown(),
  }) {
    assert(noconnection != null);
    assert(server != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noconnection(),
    Result server(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noconnection(_NoConnectionFailure value),
    @required Result server(_ServerFailure value),
    @required Result unknown(_UnknownFailure value),
  }) {
    assert(noconnection != null);
    assert(server != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noconnection(_NoConnectionFailure value),
    Result server(_ServerFailure value),
    Result unknown(_UnknownFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure implements Failure {
  factory _UnknownFailure() = _$_UnknownFailure;
}
