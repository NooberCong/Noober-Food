// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'recipe_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RecipeInformationEventTearOff {
  const _$RecipeInformationEventTearOff();

  _RecipeInformationEventProcess processInputData(dynamic idOrData) {
    return _RecipeInformationEventProcess(
      idOrData,
    );
  }
}

// ignore: unused_element
const $RecipeInformationEvent = _$RecipeInformationEventTearOff();

mixin _$RecipeInformationEvent {
  dynamic get idOrData;

  $RecipeInformationEventCopyWith<RecipeInformationEvent> get copyWith;
}

abstract class $RecipeInformationEventCopyWith<$Res> {
  factory $RecipeInformationEventCopyWith(RecipeInformationEvent value,
          $Res Function(RecipeInformationEvent) then) =
      _$RecipeInformationEventCopyWithImpl<$Res>;
  $Res call({dynamic idOrData});
}

class _$RecipeInformationEventCopyWithImpl<$Res>
    implements $RecipeInformationEventCopyWith<$Res> {
  _$RecipeInformationEventCopyWithImpl(this._value, this._then);

  final RecipeInformationEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeInformationEvent) _then;

  @override
  $Res call({
    Object idOrData = freezed,
  }) {
    return _then(_value.copyWith(
      idOrData: idOrData == freezed ? _value.idOrData : idOrData as dynamic,
    ));
  }
}

abstract class _$RecipeInformationEventProcessCopyWith<$Res>
    implements $RecipeInformationEventCopyWith<$Res> {
  factory _$RecipeInformationEventProcessCopyWith(
          _RecipeInformationEventProcess value,
          $Res Function(_RecipeInformationEventProcess) then) =
      __$RecipeInformationEventProcessCopyWithImpl<$Res>;
  @override
  $Res call({dynamic idOrData});
}

class __$RecipeInformationEventProcessCopyWithImpl<$Res>
    extends _$RecipeInformationEventCopyWithImpl<$Res>
    implements _$RecipeInformationEventProcessCopyWith<$Res> {
  __$RecipeInformationEventProcessCopyWithImpl(
      _RecipeInformationEventProcess _value,
      $Res Function(_RecipeInformationEventProcess) _then)
      : super(_value, (v) => _then(v as _RecipeInformationEventProcess));

  @override
  _RecipeInformationEventProcess get _value =>
      super._value as _RecipeInformationEventProcess;

  @override
  $Res call({
    Object idOrData = freezed,
  }) {
    return _then(_RecipeInformationEventProcess(
      idOrData == freezed ? _value.idOrData : idOrData as dynamic,
    ));
  }
}

class _$_RecipeInformationEventProcess
    implements _RecipeInformationEventProcess {
  const _$_RecipeInformationEventProcess(this.idOrData)
      : assert(idOrData != null);

  @override
  final dynamic idOrData;

  @override
  String toString() {
    return 'RecipeInformationEvent.processInputData(idOrData: $idOrData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeInformationEventProcess &&
            (identical(other.idOrData, idOrData) ||
                const DeepCollectionEquality()
                    .equals(other.idOrData, idOrData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(idOrData);

  @override
  _$RecipeInformationEventProcessCopyWith<_RecipeInformationEventProcess>
      get copyWith => __$RecipeInformationEventProcessCopyWithImpl<
          _RecipeInformationEventProcess>(this, _$identity);
}

abstract class _RecipeInformationEventProcess
    implements RecipeInformationEvent {
  const factory _RecipeInformationEventProcess(dynamic idOrData) =
      _$_RecipeInformationEventProcess;

  @override
  dynamic get idOrData;
  @override
  _$RecipeInformationEventProcessCopyWith<_RecipeInformationEventProcess>
      get copyWith;
}

class _$RecipeInformationStateTearOff {
  const _$RecipeInformationStateTearOff();

  _RecipeInformationStateInitial initial() {
    return const _RecipeInformationStateInitial();
  }

  _RecipeInformationStateLoading loading() {
    return const _RecipeInformationStateLoading();
  }

  _RecipeInformationState loaded(RecipeInformation data) {
    return _RecipeInformationState(
      data,
    );
  }

  _RecipeInformationStateError error(String message) {
    return _RecipeInformationStateError(
      message,
    );
  }
}

// ignore: unused_element
const $RecipeInformationState = _$RecipeInformationStateTearOff();

mixin _$RecipeInformationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(RecipeInformation data),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(RecipeInformation data),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecipeInformationStateInitial value),
    @required Result loading(_RecipeInformationStateLoading value),
    @required Result loaded(_RecipeInformationState value),
    @required Result error(_RecipeInformationStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecipeInformationStateInitial value),
    Result loading(_RecipeInformationStateLoading value),
    Result loaded(_RecipeInformationState value),
    Result error(_RecipeInformationStateError value),
    @required Result orElse(),
  });
}

abstract class $RecipeInformationStateCopyWith<$Res> {
  factory $RecipeInformationStateCopyWith(RecipeInformationState value,
          $Res Function(RecipeInformationState) then) =
      _$RecipeInformationStateCopyWithImpl<$Res>;
}

class _$RecipeInformationStateCopyWithImpl<$Res>
    implements $RecipeInformationStateCopyWith<$Res> {
  _$RecipeInformationStateCopyWithImpl(this._value, this._then);

  final RecipeInformationState _value;
  // ignore: unused_field
  final $Res Function(RecipeInformationState) _then;
}

abstract class _$RecipeInformationStateInitialCopyWith<$Res> {
  factory _$RecipeInformationStateInitialCopyWith(
          _RecipeInformationStateInitial value,
          $Res Function(_RecipeInformationStateInitial) then) =
      __$RecipeInformationStateInitialCopyWithImpl<$Res>;
}

class __$RecipeInformationStateInitialCopyWithImpl<$Res>
    extends _$RecipeInformationStateCopyWithImpl<$Res>
    implements _$RecipeInformationStateInitialCopyWith<$Res> {
  __$RecipeInformationStateInitialCopyWithImpl(
      _RecipeInformationStateInitial _value,
      $Res Function(_RecipeInformationStateInitial) _then)
      : super(_value, (v) => _then(v as _RecipeInformationStateInitial));

  @override
  _RecipeInformationStateInitial get _value =>
      super._value as _RecipeInformationStateInitial;
}

class _$_RecipeInformationStateInitial
    implements _RecipeInformationStateInitial {
  const _$_RecipeInformationStateInitial();

  @override
  String toString() {
    return 'RecipeInformationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RecipeInformationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(RecipeInformation data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(RecipeInformation data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecipeInformationStateInitial value),
    @required Result loading(_RecipeInformationStateLoading value),
    @required Result loaded(_RecipeInformationState value),
    @required Result error(_RecipeInformationStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecipeInformationStateInitial value),
    Result loading(_RecipeInformationStateLoading value),
    Result loaded(_RecipeInformationState value),
    Result error(_RecipeInformationStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RecipeInformationStateInitial
    implements RecipeInformationState {
  const factory _RecipeInformationStateInitial() =
      _$_RecipeInformationStateInitial;
}

abstract class _$RecipeInformationStateLoadingCopyWith<$Res> {
  factory _$RecipeInformationStateLoadingCopyWith(
          _RecipeInformationStateLoading value,
          $Res Function(_RecipeInformationStateLoading) then) =
      __$RecipeInformationStateLoadingCopyWithImpl<$Res>;
}

class __$RecipeInformationStateLoadingCopyWithImpl<$Res>
    extends _$RecipeInformationStateCopyWithImpl<$Res>
    implements _$RecipeInformationStateLoadingCopyWith<$Res> {
  __$RecipeInformationStateLoadingCopyWithImpl(
      _RecipeInformationStateLoading _value,
      $Res Function(_RecipeInformationStateLoading) _then)
      : super(_value, (v) => _then(v as _RecipeInformationStateLoading));

  @override
  _RecipeInformationStateLoading get _value =>
      super._value as _RecipeInformationStateLoading;
}

class _$_RecipeInformationStateLoading
    implements _RecipeInformationStateLoading {
  const _$_RecipeInformationStateLoading();

  @override
  String toString() {
    return 'RecipeInformationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RecipeInformationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(RecipeInformation data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(RecipeInformation data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecipeInformationStateInitial value),
    @required Result loading(_RecipeInformationStateLoading value),
    @required Result loaded(_RecipeInformationState value),
    @required Result error(_RecipeInformationStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecipeInformationStateInitial value),
    Result loading(_RecipeInformationStateLoading value),
    Result loaded(_RecipeInformationState value),
    Result error(_RecipeInformationStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RecipeInformationStateLoading
    implements RecipeInformationState {
  const factory _RecipeInformationStateLoading() =
      _$_RecipeInformationStateLoading;
}

abstract class _$RecipeInformationStateCopyWith<$Res> {
  factory _$RecipeInformationStateCopyWith(_RecipeInformationState value,
          $Res Function(_RecipeInformationState) then) =
      __$RecipeInformationStateCopyWithImpl<$Res>;
  $Res call({RecipeInformation data});
}

class __$RecipeInformationStateCopyWithImpl<$Res>
    extends _$RecipeInformationStateCopyWithImpl<$Res>
    implements _$RecipeInformationStateCopyWith<$Res> {
  __$RecipeInformationStateCopyWithImpl(_RecipeInformationState _value,
      $Res Function(_RecipeInformationState) _then)
      : super(_value, (v) => _then(v as _RecipeInformationState));

  @override
  _RecipeInformationState get _value => super._value as _RecipeInformationState;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_RecipeInformationState(
      data == freezed ? _value.data : data as RecipeInformation,
    ));
  }
}

class _$_RecipeInformationState implements _RecipeInformationState {
  const _$_RecipeInformationState(this.data) : assert(data != null);

  @override
  final RecipeInformation data;

  @override
  String toString() {
    return 'RecipeInformationState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeInformationState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$RecipeInformationStateCopyWith<_RecipeInformationState> get copyWith =>
      __$RecipeInformationStateCopyWithImpl<_RecipeInformationState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(RecipeInformation data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(RecipeInformation data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecipeInformationStateInitial value),
    @required Result loading(_RecipeInformationStateLoading value),
    @required Result loaded(_RecipeInformationState value),
    @required Result error(_RecipeInformationStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecipeInformationStateInitial value),
    Result loading(_RecipeInformationStateLoading value),
    Result loaded(_RecipeInformationState value),
    Result error(_RecipeInformationStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RecipeInformationState implements RecipeInformationState {
  const factory _RecipeInformationState(RecipeInformation data) =
      _$_RecipeInformationState;

  RecipeInformation get data;
  _$RecipeInformationStateCopyWith<_RecipeInformationState> get copyWith;
}

abstract class _$RecipeInformationStateErrorCopyWith<$Res> {
  factory _$RecipeInformationStateErrorCopyWith(
          _RecipeInformationStateError value,
          $Res Function(_RecipeInformationStateError) then) =
      __$RecipeInformationStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$RecipeInformationStateErrorCopyWithImpl<$Res>
    extends _$RecipeInformationStateCopyWithImpl<$Res>
    implements _$RecipeInformationStateErrorCopyWith<$Res> {
  __$RecipeInformationStateErrorCopyWithImpl(
      _RecipeInformationStateError _value,
      $Res Function(_RecipeInformationStateError) _then)
      : super(_value, (v) => _then(v as _RecipeInformationStateError));

  @override
  _RecipeInformationStateError get _value =>
      super._value as _RecipeInformationStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_RecipeInformationStateError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_RecipeInformationStateError implements _RecipeInformationStateError {
  const _$_RecipeInformationStateError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RecipeInformationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeInformationStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$RecipeInformationStateErrorCopyWith<_RecipeInformationStateError>
      get copyWith => __$RecipeInformationStateErrorCopyWithImpl<
          _RecipeInformationStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(RecipeInformation data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(RecipeInformation data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecipeInformationStateInitial value),
    @required Result loading(_RecipeInformationStateLoading value),
    @required Result loaded(_RecipeInformationState value),
    @required Result error(_RecipeInformationStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecipeInformationStateInitial value),
    Result loading(_RecipeInformationStateLoading value),
    Result loaded(_RecipeInformationState value),
    Result error(_RecipeInformationStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RecipeInformationStateError implements RecipeInformationState {
  const factory _RecipeInformationStateError(String message) =
      _$_RecipeInformationStateError;

  String get message;
  _$RecipeInformationStateErrorCopyWith<_RecipeInformationStateError>
      get copyWith;
}
