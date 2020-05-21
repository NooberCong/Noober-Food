// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'preferences_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PreferencesPageEventTearOff {
  const _$PreferencesPageEventTearOff();

  _PreferencesPageEventGet getUserPreferences() {
    return const _PreferencesPageEventGet();
  }

  _PreferencesPageEventSave saveUserPreferences(
      UserPreferences userPreferences) {
    return _PreferencesPageEventSave(
      userPreferences,
    );
  }
}

// ignore: unused_element
const $PreferencesPageEvent = _$PreferencesPageEventTearOff();

mixin _$PreferencesPageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPreferences(),
    @required Result saveUserPreferences(UserPreferences userPreferences),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPreferences(),
    Result saveUserPreferences(UserPreferences userPreferences),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPreferences(_PreferencesPageEventGet value),
    @required Result saveUserPreferences(_PreferencesPageEventSave value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPreferences(_PreferencesPageEventGet value),
    Result saveUserPreferences(_PreferencesPageEventSave value),
    @required Result orElse(),
  });
}

abstract class $PreferencesPageEventCopyWith<$Res> {
  factory $PreferencesPageEventCopyWith(PreferencesPageEvent value,
          $Res Function(PreferencesPageEvent) then) =
      _$PreferencesPageEventCopyWithImpl<$Res>;
}

class _$PreferencesPageEventCopyWithImpl<$Res>
    implements $PreferencesPageEventCopyWith<$Res> {
  _$PreferencesPageEventCopyWithImpl(this._value, this._then);

  final PreferencesPageEvent _value;
  // ignore: unused_field
  final $Res Function(PreferencesPageEvent) _then;
}

abstract class _$PreferencesPageEventGetCopyWith<$Res> {
  factory _$PreferencesPageEventGetCopyWith(_PreferencesPageEventGet value,
          $Res Function(_PreferencesPageEventGet) then) =
      __$PreferencesPageEventGetCopyWithImpl<$Res>;
}

class __$PreferencesPageEventGetCopyWithImpl<$Res>
    extends _$PreferencesPageEventCopyWithImpl<$Res>
    implements _$PreferencesPageEventGetCopyWith<$Res> {
  __$PreferencesPageEventGetCopyWithImpl(_PreferencesPageEventGet _value,
      $Res Function(_PreferencesPageEventGet) _then)
      : super(_value, (v) => _then(v as _PreferencesPageEventGet));

  @override
  _PreferencesPageEventGet get _value =>
      super._value as _PreferencesPageEventGet;
}

class _$_PreferencesPageEventGet implements _PreferencesPageEventGet {
  const _$_PreferencesPageEventGet();

  @override
  String toString() {
    return 'PreferencesPageEvent.getUserPreferences()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PreferencesPageEventGet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPreferences(),
    @required Result saveUserPreferences(UserPreferences userPreferences),
  }) {
    assert(getUserPreferences != null);
    assert(saveUserPreferences != null);
    return getUserPreferences();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPreferences(),
    Result saveUserPreferences(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserPreferences != null) {
      return getUserPreferences();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPreferences(_PreferencesPageEventGet value),
    @required Result saveUserPreferences(_PreferencesPageEventSave value),
  }) {
    assert(getUserPreferences != null);
    assert(saveUserPreferences != null);
    return getUserPreferences(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPreferences(_PreferencesPageEventGet value),
    Result saveUserPreferences(_PreferencesPageEventSave value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserPreferences != null) {
      return getUserPreferences(this);
    }
    return orElse();
  }
}

abstract class _PreferencesPageEventGet implements PreferencesPageEvent {
  const factory _PreferencesPageEventGet() = _$_PreferencesPageEventGet;
}

abstract class _$PreferencesPageEventSaveCopyWith<$Res> {
  factory _$PreferencesPageEventSaveCopyWith(_PreferencesPageEventSave value,
          $Res Function(_PreferencesPageEventSave) then) =
      __$PreferencesPageEventSaveCopyWithImpl<$Res>;
  $Res call({UserPreferences userPreferences});

  $UserPreferencesCopyWith<$Res> get userPreferences;
}

class __$PreferencesPageEventSaveCopyWithImpl<$Res>
    extends _$PreferencesPageEventCopyWithImpl<$Res>
    implements _$PreferencesPageEventSaveCopyWith<$Res> {
  __$PreferencesPageEventSaveCopyWithImpl(_PreferencesPageEventSave _value,
      $Res Function(_PreferencesPageEventSave) _then)
      : super(_value, (v) => _then(v as _PreferencesPageEventSave));

  @override
  _PreferencesPageEventSave get _value =>
      super._value as _PreferencesPageEventSave;

  @override
  $Res call({
    Object userPreferences = freezed,
  }) {
    return _then(_PreferencesPageEventSave(
      userPreferences == freezed
          ? _value.userPreferences
          : userPreferences as UserPreferences,
    ));
  }

  @override
  $UserPreferencesCopyWith<$Res> get userPreferences {
    if (_value.userPreferences == null) {
      return null;
    }
    return $UserPreferencesCopyWith<$Res>(_value.userPreferences, (value) {
      return _then(_value.copyWith(userPreferences: value));
    });
  }
}

class _$_PreferencesPageEventSave implements _PreferencesPageEventSave {
  const _$_PreferencesPageEventSave(this.userPreferences)
      : assert(userPreferences != null);

  @override
  final UserPreferences userPreferences;

  @override
  String toString() {
    return 'PreferencesPageEvent.saveUserPreferences(userPreferences: $userPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferencesPageEventSave &&
            (identical(other.userPreferences, userPreferences) ||
                const DeepCollectionEquality()
                    .equals(other.userPreferences, userPreferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userPreferences);

  @override
  _$PreferencesPageEventSaveCopyWith<_PreferencesPageEventSave> get copyWith =>
      __$PreferencesPageEventSaveCopyWithImpl<_PreferencesPageEventSave>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPreferences(),
    @required Result saveUserPreferences(UserPreferences userPreferences),
  }) {
    assert(getUserPreferences != null);
    assert(saveUserPreferences != null);
    return saveUserPreferences(userPreferences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPreferences(),
    Result saveUserPreferences(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveUserPreferences != null) {
      return saveUserPreferences(userPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPreferences(_PreferencesPageEventGet value),
    @required Result saveUserPreferences(_PreferencesPageEventSave value),
  }) {
    assert(getUserPreferences != null);
    assert(saveUserPreferences != null);
    return saveUserPreferences(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPreferences(_PreferencesPageEventGet value),
    Result saveUserPreferences(_PreferencesPageEventSave value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveUserPreferences != null) {
      return saveUserPreferences(this);
    }
    return orElse();
  }
}

abstract class _PreferencesPageEventSave implements PreferencesPageEvent {
  const factory _PreferencesPageEventSave(UserPreferences userPreferences) =
      _$_PreferencesPageEventSave;

  UserPreferences get userPreferences;
  _$PreferencesPageEventSaveCopyWith<_PreferencesPageEventSave> get copyWith;
}

class _$PreferencesPageStateTearOff {
  const _$PreferencesPageStateTearOff();

  _PreferencesPageStateInitial initial() {
    return const _PreferencesPageStateInitial();
  }

  _PreferencesPageStateLoaded loaded(UserPreferences userPreferences) {
    return _PreferencesPageStateLoaded(
      userPreferences,
    );
  }

  _PreferencesPageStateError error(String message) {
    return _PreferencesPageStateError(
      message,
    );
  }
}

// ignore: unused_element
const $PreferencesPageState = _$PreferencesPageStateTearOff();

mixin _$PreferencesPageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(UserPreferences userPreferences),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(UserPreferences userPreferences),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PreferencesPageStateInitial value),
    @required Result loaded(_PreferencesPageStateLoaded value),
    @required Result error(_PreferencesPageStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PreferencesPageStateInitial value),
    Result loaded(_PreferencesPageStateLoaded value),
    Result error(_PreferencesPageStateError value),
    @required Result orElse(),
  });
}

abstract class $PreferencesPageStateCopyWith<$Res> {
  factory $PreferencesPageStateCopyWith(PreferencesPageState value,
          $Res Function(PreferencesPageState) then) =
      _$PreferencesPageStateCopyWithImpl<$Res>;
}

class _$PreferencesPageStateCopyWithImpl<$Res>
    implements $PreferencesPageStateCopyWith<$Res> {
  _$PreferencesPageStateCopyWithImpl(this._value, this._then);

  final PreferencesPageState _value;
  // ignore: unused_field
  final $Res Function(PreferencesPageState) _then;
}

abstract class _$PreferencesPageStateInitialCopyWith<$Res> {
  factory _$PreferencesPageStateInitialCopyWith(
          _PreferencesPageStateInitial value,
          $Res Function(_PreferencesPageStateInitial) then) =
      __$PreferencesPageStateInitialCopyWithImpl<$Res>;
}

class __$PreferencesPageStateInitialCopyWithImpl<$Res>
    extends _$PreferencesPageStateCopyWithImpl<$Res>
    implements _$PreferencesPageStateInitialCopyWith<$Res> {
  __$PreferencesPageStateInitialCopyWithImpl(
      _PreferencesPageStateInitial _value,
      $Res Function(_PreferencesPageStateInitial) _then)
      : super(_value, (v) => _then(v as _PreferencesPageStateInitial));

  @override
  _PreferencesPageStateInitial get _value =>
      super._value as _PreferencesPageStateInitial;
}

class _$_PreferencesPageStateInitial implements _PreferencesPageStateInitial {
  const _$_PreferencesPageStateInitial();

  @override
  String toString() {
    return 'PreferencesPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PreferencesPageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(UserPreferences userPreferences),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(UserPreferences userPreferences),
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
    @required Result initial(_PreferencesPageStateInitial value),
    @required Result loaded(_PreferencesPageStateLoaded value),
    @required Result error(_PreferencesPageStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PreferencesPageStateInitial value),
    Result loaded(_PreferencesPageStateLoaded value),
    Result error(_PreferencesPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PreferencesPageStateInitial implements PreferencesPageState {
  const factory _PreferencesPageStateInitial() = _$_PreferencesPageStateInitial;
}

abstract class _$PreferencesPageStateLoadedCopyWith<$Res> {
  factory _$PreferencesPageStateLoadedCopyWith(
          _PreferencesPageStateLoaded value,
          $Res Function(_PreferencesPageStateLoaded) then) =
      __$PreferencesPageStateLoadedCopyWithImpl<$Res>;
  $Res call({UserPreferences userPreferences});

  $UserPreferencesCopyWith<$Res> get userPreferences;
}

class __$PreferencesPageStateLoadedCopyWithImpl<$Res>
    extends _$PreferencesPageStateCopyWithImpl<$Res>
    implements _$PreferencesPageStateLoadedCopyWith<$Res> {
  __$PreferencesPageStateLoadedCopyWithImpl(_PreferencesPageStateLoaded _value,
      $Res Function(_PreferencesPageStateLoaded) _then)
      : super(_value, (v) => _then(v as _PreferencesPageStateLoaded));

  @override
  _PreferencesPageStateLoaded get _value =>
      super._value as _PreferencesPageStateLoaded;

  @override
  $Res call({
    Object userPreferences = freezed,
  }) {
    return _then(_PreferencesPageStateLoaded(
      userPreferences == freezed
          ? _value.userPreferences
          : userPreferences as UserPreferences,
    ));
  }

  @override
  $UserPreferencesCopyWith<$Res> get userPreferences {
    if (_value.userPreferences == null) {
      return null;
    }
    return $UserPreferencesCopyWith<$Res>(_value.userPreferences, (value) {
      return _then(_value.copyWith(userPreferences: value));
    });
  }
}

class _$_PreferencesPageStateLoaded implements _PreferencesPageStateLoaded {
  const _$_PreferencesPageStateLoaded(this.userPreferences)
      : assert(userPreferences != null);

  @override
  final UserPreferences userPreferences;

  @override
  String toString() {
    return 'PreferencesPageState.loaded(userPreferences: $userPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferencesPageStateLoaded &&
            (identical(other.userPreferences, userPreferences) ||
                const DeepCollectionEquality()
                    .equals(other.userPreferences, userPreferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userPreferences);

  @override
  _$PreferencesPageStateLoadedCopyWith<_PreferencesPageStateLoaded>
      get copyWith => __$PreferencesPageStateLoadedCopyWithImpl<
          _PreferencesPageStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(UserPreferences userPreferences),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(userPreferences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(UserPreferences userPreferences),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(userPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PreferencesPageStateInitial value),
    @required Result loaded(_PreferencesPageStateLoaded value),
    @required Result error(_PreferencesPageStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PreferencesPageStateInitial value),
    Result loaded(_PreferencesPageStateLoaded value),
    Result error(_PreferencesPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PreferencesPageStateLoaded implements PreferencesPageState {
  const factory _PreferencesPageStateLoaded(UserPreferences userPreferences) =
      _$_PreferencesPageStateLoaded;

  UserPreferences get userPreferences;
  _$PreferencesPageStateLoadedCopyWith<_PreferencesPageStateLoaded>
      get copyWith;
}

abstract class _$PreferencesPageStateErrorCopyWith<$Res> {
  factory _$PreferencesPageStateErrorCopyWith(_PreferencesPageStateError value,
          $Res Function(_PreferencesPageStateError) then) =
      __$PreferencesPageStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$PreferencesPageStateErrorCopyWithImpl<$Res>
    extends _$PreferencesPageStateCopyWithImpl<$Res>
    implements _$PreferencesPageStateErrorCopyWith<$Res> {
  __$PreferencesPageStateErrorCopyWithImpl(_PreferencesPageStateError _value,
      $Res Function(_PreferencesPageStateError) _then)
      : super(_value, (v) => _then(v as _PreferencesPageStateError));

  @override
  _PreferencesPageStateError get _value =>
      super._value as _PreferencesPageStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_PreferencesPageStateError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_PreferencesPageStateError implements _PreferencesPageStateError {
  const _$_PreferencesPageStateError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'PreferencesPageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferencesPageStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$PreferencesPageStateErrorCopyWith<_PreferencesPageStateError>
      get copyWith =>
          __$PreferencesPageStateErrorCopyWithImpl<_PreferencesPageStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(UserPreferences userPreferences),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(UserPreferences userPreferences),
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
    @required Result initial(_PreferencesPageStateInitial value),
    @required Result loaded(_PreferencesPageStateLoaded value),
    @required Result error(_PreferencesPageStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PreferencesPageStateInitial value),
    Result loaded(_PreferencesPageStateLoaded value),
    Result error(_PreferencesPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PreferencesPageStateError implements PreferencesPageState {
  const factory _PreferencesPageStateError(String message) =
      _$_PreferencesPageStateError;

  String get message;
  _$PreferencesPageStateErrorCopyWith<_PreferencesPageStateError> get copyWith;
}
