// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDrivers,
    required TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )
    addDrivers,
    required TResult Function(String id) editDriver,
    required TResult Function(String id) deleteDriver,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDrivers,
    TResult? Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult? Function(String id)? editDriver,
    TResult? Function(String id)? deleteDriver,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDrivers,
    TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult Function(String id)? editDriver,
    TResult Function(String id)? deleteDriver,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrivers value) fetchDrivers,
    required TResult Function(_AddDrivers value) addDrivers,
    required TResult Function(_EditDriver value) editDriver,
    required TResult Function(_DeleteDriver value) deleteDriver,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDrivers value)? fetchDrivers,
    TResult? Function(_AddDrivers value)? addDrivers,
    TResult? Function(_EditDriver value)? editDriver,
    TResult? Function(_DeleteDriver value)? deleteDriver,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrivers value)? fetchDrivers,
    TResult Function(_AddDrivers value)? addDrivers,
    TResult Function(_EditDriver value)? editDriver,
    TResult Function(_DeleteDriver value)? deleteDriver,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEventCopyWith<$Res> {
  factory $DriverEventCopyWith(
    DriverEvent value,
    $Res Function(DriverEvent) then,
  ) = _$DriverEventCopyWithImpl<$Res, DriverEvent>;
}

/// @nodoc
class _$DriverEventCopyWithImpl<$Res, $Val extends DriverEvent>
    implements $DriverEventCopyWith<$Res> {
  _$DriverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchDriversImplCopyWith<$Res> {
  factory _$$FetchDriversImplCopyWith(
    _$FetchDriversImpl value,
    $Res Function(_$FetchDriversImpl) then,
  ) = __$$FetchDriversImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDriversImplCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$FetchDriversImpl>
    implements _$$FetchDriversImplCopyWith<$Res> {
  __$$FetchDriversImplCopyWithImpl(
    _$FetchDriversImpl _value,
    $Res Function(_$FetchDriversImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchDriversImpl implements _FetchDrivers {
  const _$FetchDriversImpl();

  @override
  String toString() {
    return 'DriverEvent.fetchDrivers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDriversImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDrivers,
    required TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )
    addDrivers,
    required TResult Function(String id) editDriver,
    required TResult Function(String id) deleteDriver,
  }) {
    return fetchDrivers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDrivers,
    TResult? Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult? Function(String id)? editDriver,
    TResult? Function(String id)? deleteDriver,
  }) {
    return fetchDrivers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDrivers,
    TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult Function(String id)? editDriver,
    TResult Function(String id)? deleteDriver,
    required TResult orElse(),
  }) {
    if (fetchDrivers != null) {
      return fetchDrivers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrivers value) fetchDrivers,
    required TResult Function(_AddDrivers value) addDrivers,
    required TResult Function(_EditDriver value) editDriver,
    required TResult Function(_DeleteDriver value) deleteDriver,
  }) {
    return fetchDrivers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDrivers value)? fetchDrivers,
    TResult? Function(_AddDrivers value)? addDrivers,
    TResult? Function(_EditDriver value)? editDriver,
    TResult? Function(_DeleteDriver value)? deleteDriver,
  }) {
    return fetchDrivers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrivers value)? fetchDrivers,
    TResult Function(_AddDrivers value)? addDrivers,
    TResult Function(_EditDriver value)? editDriver,
    TResult Function(_DeleteDriver value)? deleteDriver,
    required TResult orElse(),
  }) {
    if (fetchDrivers != null) {
      return fetchDrivers(this);
    }
    return orElse();
  }
}

abstract class _FetchDrivers implements DriverEvent {
  const factory _FetchDrivers() = _$FetchDriversImpl;
}

/// @nodoc
abstract class _$$AddDriversImplCopyWith<$Res> {
  factory _$$AddDriversImplCopyWith(
    _$AddDriversImpl value,
    $Res Function(_$AddDriversImpl) then,
  ) = __$$AddDriversImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String name,
    String email,
    String password,
    String phone,
    String? profile,
  });
}

/// @nodoc
class __$$AddDriversImplCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$AddDriversImpl>
    implements _$$AddDriversImplCopyWith<$Res> {
  __$$AddDriversImplCopyWithImpl(
    _$AddDriversImpl _value,
    $Res Function(_$AddDriversImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? profile = freezed,
  }) {
    return _then(
      _$AddDriversImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        profile:
            freezed == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$AddDriversImpl implements _AddDrivers {
  const _$AddDriversImpl({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.profile,
  });

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phone;
  @override
  final String? profile;

  @override
  String toString() {
    return 'DriverEvent.addDrivers(name: $name, email: $email, password: $password, phone: $phone, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDriversImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, phone, profile);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDriversImplCopyWith<_$AddDriversImpl> get copyWith =>
      __$$AddDriversImplCopyWithImpl<_$AddDriversImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDrivers,
    required TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )
    addDrivers,
    required TResult Function(String id) editDriver,
    required TResult Function(String id) deleteDriver,
  }) {
    return addDrivers(name, email, password, phone, profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDrivers,
    TResult? Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult? Function(String id)? editDriver,
    TResult? Function(String id)? deleteDriver,
  }) {
    return addDrivers?.call(name, email, password, phone, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDrivers,
    TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult Function(String id)? editDriver,
    TResult Function(String id)? deleteDriver,
    required TResult orElse(),
  }) {
    if (addDrivers != null) {
      return addDrivers(name, email, password, phone, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrivers value) fetchDrivers,
    required TResult Function(_AddDrivers value) addDrivers,
    required TResult Function(_EditDriver value) editDriver,
    required TResult Function(_DeleteDriver value) deleteDriver,
  }) {
    return addDrivers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDrivers value)? fetchDrivers,
    TResult? Function(_AddDrivers value)? addDrivers,
    TResult? Function(_EditDriver value)? editDriver,
    TResult? Function(_DeleteDriver value)? deleteDriver,
  }) {
    return addDrivers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrivers value)? fetchDrivers,
    TResult Function(_AddDrivers value)? addDrivers,
    TResult Function(_EditDriver value)? editDriver,
    TResult Function(_DeleteDriver value)? deleteDriver,
    required TResult orElse(),
  }) {
    if (addDrivers != null) {
      return addDrivers(this);
    }
    return orElse();
  }
}

abstract class _AddDrivers implements DriverEvent {
  const factory _AddDrivers({
    required final String name,
    required final String email,
    required final String password,
    required final String phone,
    required final String? profile,
  }) = _$AddDriversImpl;

  String get name;
  String get email;
  String get password;
  String get phone;
  String? get profile;

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDriversImplCopyWith<_$AddDriversImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditDriverImplCopyWith<$Res> {
  factory _$$EditDriverImplCopyWith(
    _$EditDriverImpl value,
    $Res Function(_$EditDriverImpl) then,
  ) = __$$EditDriverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$EditDriverImplCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$EditDriverImpl>
    implements _$$EditDriverImplCopyWith<$Res> {
  __$$EditDriverImplCopyWithImpl(
    _$EditDriverImpl _value,
    $Res Function(_$EditDriverImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$EditDriverImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$EditDriverImpl implements _EditDriver {
  const _$EditDriverImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DriverEvent.editDriver(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditDriverImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditDriverImplCopyWith<_$EditDriverImpl> get copyWith =>
      __$$EditDriverImplCopyWithImpl<_$EditDriverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDrivers,
    required TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )
    addDrivers,
    required TResult Function(String id) editDriver,
    required TResult Function(String id) deleteDriver,
  }) {
    return editDriver(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDrivers,
    TResult? Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult? Function(String id)? editDriver,
    TResult? Function(String id)? deleteDriver,
  }) {
    return editDriver?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDrivers,
    TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult Function(String id)? editDriver,
    TResult Function(String id)? deleteDriver,
    required TResult orElse(),
  }) {
    if (editDriver != null) {
      return editDriver(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrivers value) fetchDrivers,
    required TResult Function(_AddDrivers value) addDrivers,
    required TResult Function(_EditDriver value) editDriver,
    required TResult Function(_DeleteDriver value) deleteDriver,
  }) {
    return editDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDrivers value)? fetchDrivers,
    TResult? Function(_AddDrivers value)? addDrivers,
    TResult? Function(_EditDriver value)? editDriver,
    TResult? Function(_DeleteDriver value)? deleteDriver,
  }) {
    return editDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrivers value)? fetchDrivers,
    TResult Function(_AddDrivers value)? addDrivers,
    TResult Function(_EditDriver value)? editDriver,
    TResult Function(_DeleteDriver value)? deleteDriver,
    required TResult orElse(),
  }) {
    if (editDriver != null) {
      return editDriver(this);
    }
    return orElse();
  }
}

abstract class _EditDriver implements DriverEvent {
  const factory _EditDriver(final String id) = _$EditDriverImpl;

  String get id;

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditDriverImplCopyWith<_$EditDriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDriverImplCopyWith<$Res> {
  factory _$$DeleteDriverImplCopyWith(
    _$DeleteDriverImpl value,
    $Res Function(_$DeleteDriverImpl) then,
  ) = __$$DeleteDriverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteDriverImplCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$DeleteDriverImpl>
    implements _$$DeleteDriverImplCopyWith<$Res> {
  __$$DeleteDriverImplCopyWithImpl(
    _$DeleteDriverImpl _value,
    $Res Function(_$DeleteDriverImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteDriverImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteDriverImpl implements _DeleteDriver {
  const _$DeleteDriverImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DriverEvent.deleteDriver(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDriverImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDriverImplCopyWith<_$DeleteDriverImpl> get copyWith =>
      __$$DeleteDriverImplCopyWithImpl<_$DeleteDriverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDrivers,
    required TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )
    addDrivers,
    required TResult Function(String id) editDriver,
    required TResult Function(String id) deleteDriver,
  }) {
    return deleteDriver(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDrivers,
    TResult? Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult? Function(String id)? editDriver,
    TResult? Function(String id)? deleteDriver,
  }) {
    return deleteDriver?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDrivers,
    TResult Function(
      String name,
      String email,
      String password,
      String phone,
      String? profile,
    )?
    addDrivers,
    TResult Function(String id)? editDriver,
    TResult Function(String id)? deleteDriver,
    required TResult orElse(),
  }) {
    if (deleteDriver != null) {
      return deleteDriver(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrivers value) fetchDrivers,
    required TResult Function(_AddDrivers value) addDrivers,
    required TResult Function(_EditDriver value) editDriver,
    required TResult Function(_DeleteDriver value) deleteDriver,
  }) {
    return deleteDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDrivers value)? fetchDrivers,
    TResult? Function(_AddDrivers value)? addDrivers,
    TResult? Function(_EditDriver value)? editDriver,
    TResult? Function(_DeleteDriver value)? deleteDriver,
  }) {
    return deleteDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrivers value)? fetchDrivers,
    TResult Function(_AddDrivers value)? addDrivers,
    TResult Function(_EditDriver value)? editDriver,
    TResult Function(_DeleteDriver value)? deleteDriver,
    required TResult orElse(),
  }) {
    if (deleteDriver != null) {
      return deleteDriver(this);
    }
    return orElse();
  }
}

abstract class _DeleteDriver implements DriverEvent {
  const factory _DeleteDriver(final String id) = _$DeleteDriverImpl;

  String get id;

  /// Create a copy of DriverEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDriverImplCopyWith<_$DeleteDriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DriverModel> driverList) loaded,
    required TResult Function(String error) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> driverList)? loaded,
    TResult? Function(String error)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DriverModel> driverList)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStateCopyWith<$Res> {
  factory $DriverStateCopyWith(
    DriverState value,
    $Res Function(DriverState) then,
  ) = _$DriverStateCopyWithImpl<$Res, DriverState>;
}

/// @nodoc
class _$DriverStateCopyWithImpl<$Res, $Val extends DriverState>
    implements $DriverStateCopyWith<$Res> {
  _$DriverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DriverStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DriverState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DriverModel> driverList) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> driverList)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DriverModel> driverList)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DriverState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DriverModel> driverList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DriverStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? driverList = null}) {
    return _then(
      _$LoadedImpl(
        null == driverList
            ? _value._driverList
            : driverList // ignore: cast_nullable_to_non_nullable
                as List<DriverModel>,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<DriverModel> driverList)
    : _driverList = driverList;

  final List<DriverModel> _driverList;
  @override
  List<DriverModel> get driverList {
    if (_driverList is EqualUnmodifiableListView) return _driverList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driverList);
  }

  @override
  String toString() {
    return 'DriverState.loaded(driverList: $driverList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(
              other._driverList,
              _driverList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_driverList),
  );

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DriverModel> driverList) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(driverList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> driverList)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(driverList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DriverModel> driverList)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(driverList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DriverState {
  const factory _Loaded(final List<DriverModel> driverList) = _$LoadedImpl;

  List<DriverModel> get driverList;

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DriverStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$ErrorImpl(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DriverState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DriverModel> driverList) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> driverList)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DriverModel> driverList)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DriverState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of DriverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
