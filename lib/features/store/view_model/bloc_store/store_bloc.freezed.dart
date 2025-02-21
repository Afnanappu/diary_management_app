// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStores,
    required TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)
        addStore,
    required TResult Function(StoreModel store) editStore,
    required TResult Function(String id) deleteStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStores,
    TResult? Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult? Function(StoreModel store)? editStore,
    TResult? Function(String id)? deleteStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStores,
    TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult Function(StoreModel store)? editStore,
    TResult Function(String id)? deleteStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStores value) fetchStores,
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_EditStore value) editStore,
    required TResult Function(_DeleteStore value) deleteStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStores value)? fetchStores,
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_EditStore value)? editStore,
    TResult? Function(_DeleteStore value)? deleteStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStores value)? fetchStores,
    TResult Function(_AddStore value)? addStore,
    TResult Function(_EditStore value)? editStore,
    TResult Function(_DeleteStore value)? deleteStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEventCopyWith<$Res> {
  factory $StoreEventCopyWith(
          StoreEvent value, $Res Function(StoreEvent) then) =
      _$StoreEventCopyWithImpl<$Res, StoreEvent>;
}

/// @nodoc
class _$StoreEventCopyWithImpl<$Res, $Val extends StoreEvent>
    implements $StoreEventCopyWith<$Res> {
  _$StoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchStoresImplCopyWith<$Res> {
  factory _$$FetchStoresImplCopyWith(
          _$FetchStoresImpl value, $Res Function(_$FetchStoresImpl) then) =
      __$$FetchStoresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStoresImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$FetchStoresImpl>
    implements _$$FetchStoresImplCopyWith<$Res> {
  __$$FetchStoresImplCopyWithImpl(
      _$FetchStoresImpl _value, $Res Function(_$FetchStoresImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchStoresImpl implements _FetchStores {
  const _$FetchStoresImpl();

  @override
  String toString() {
    return 'StoreEvent.fetchStores()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchStoresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStores,
    required TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)
        addStore,
    required TResult Function(StoreModel store) editStore,
    required TResult Function(String id) deleteStore,
  }) {
    return fetchStores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStores,
    TResult? Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult? Function(StoreModel store)? editStore,
    TResult? Function(String id)? deleteStore,
  }) {
    return fetchStores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStores,
    TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult Function(StoreModel store)? editStore,
    TResult Function(String id)? deleteStore,
    required TResult orElse(),
  }) {
    if (fetchStores != null) {
      return fetchStores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStores value) fetchStores,
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_EditStore value) editStore,
    required TResult Function(_DeleteStore value) deleteStore,
  }) {
    return fetchStores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStores value)? fetchStores,
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_EditStore value)? editStore,
    TResult? Function(_DeleteStore value)? deleteStore,
  }) {
    return fetchStores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStores value)? fetchStores,
    TResult Function(_AddStore value)? addStore,
    TResult Function(_EditStore value)? editStore,
    TResult Function(_DeleteStore value)? deleteStore,
    required TResult orElse(),
  }) {
    if (fetchStores != null) {
      return fetchStores(this);
    }
    return orElse();
  }
}

abstract class _FetchStores implements StoreEvent {
  const factory _FetchStores() = _$FetchStoresImpl;
}

/// @nodoc
abstract class _$$AddStoreImplCopyWith<$Res> {
  factory _$$AddStoreImplCopyWith(
          _$AddStoreImpl value, $Res Function(_$AddStoreImpl) then) =
      __$$AddStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String contact,
      String? image,
      double lat,
      double long,
      bool isVisited,
      DateTime visitedTime,
      String address});
}

/// @nodoc
class __$$AddStoreImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$AddStoreImpl>
    implements _$$AddStoreImplCopyWith<$Res> {
  __$$AddStoreImplCopyWithImpl(
      _$AddStoreImpl _value, $Res Function(_$AddStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? contact = null,
    Object? image = freezed,
    Object? lat = null,
    Object? long = null,
    Object? isVisited = null,
    Object? visitedTime = null,
    Object? address = null,
  }) {
    return _then(_$AddStoreImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      isVisited: null == isVisited
          ? _value.isVisited
          : isVisited // ignore: cast_nullable_to_non_nullable
              as bool,
      visitedTime: null == visitedTime
          ? _value.visitedTime
          : visitedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddStoreImpl implements _AddStore {
  const _$AddStoreImpl(
      {required this.id,
      required this.name,
      required this.contact,
      required this.image,
      required this.lat,
      required this.long,
      required this.isVisited,
      required this.visitedTime,
      required this.address});

  @override
  final String? id;
  @override
  final String name;
  @override
  final String contact;
  @override
  final String? image;
  @override
  final double lat;
  @override
  final double long;
  @override
  final bool isVisited;
  @override
  final DateTime visitedTime;
  @override
  final String address;

  @override
  String toString() {
    return 'StoreEvent.addStore(id: $id, name: $name, contact: $contact, image: $image, lat: $lat, long: $long, isVisited: $isVisited, visitedTime: $visitedTime, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.isVisited, isVisited) ||
                other.isVisited == isVisited) &&
            (identical(other.visitedTime, visitedTime) ||
                other.visitedTime == visitedTime) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, contact, image, lat,
      long, isVisited, visitedTime, address);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoreImplCopyWith<_$AddStoreImpl> get copyWith =>
      __$$AddStoreImplCopyWithImpl<_$AddStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStores,
    required TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)
        addStore,
    required TResult Function(StoreModel store) editStore,
    required TResult Function(String id) deleteStore,
  }) {
    return addStore(
        id, name, contact, image, lat, long, isVisited, visitedTime, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStores,
    TResult? Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult? Function(StoreModel store)? editStore,
    TResult? Function(String id)? deleteStore,
  }) {
    return addStore?.call(
        id, name, contact, image, lat, long, isVisited, visitedTime, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStores,
    TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult Function(StoreModel store)? editStore,
    TResult Function(String id)? deleteStore,
    required TResult orElse(),
  }) {
    if (addStore != null) {
      return addStore(
          id, name, contact, image, lat, long, isVisited, visitedTime, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStores value) fetchStores,
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_EditStore value) editStore,
    required TResult Function(_DeleteStore value) deleteStore,
  }) {
    return addStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStores value)? fetchStores,
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_EditStore value)? editStore,
    TResult? Function(_DeleteStore value)? deleteStore,
  }) {
    return addStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStores value)? fetchStores,
    TResult Function(_AddStore value)? addStore,
    TResult Function(_EditStore value)? editStore,
    TResult Function(_DeleteStore value)? deleteStore,
    required TResult orElse(),
  }) {
    if (addStore != null) {
      return addStore(this);
    }
    return orElse();
  }
}

abstract class _AddStore implements StoreEvent {
  const factory _AddStore(
      {required final String? id,
      required final String name,
      required final String contact,
      required final String? image,
      required final double lat,
      required final double long,
      required final bool isVisited,
      required final DateTime visitedTime,
      required final String address}) = _$AddStoreImpl;

  String? get id;
  String get name;
  String get contact;
  String? get image;
  double get lat;
  double get long;
  bool get isVisited;
  DateTime get visitedTime;
  String get address;

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStoreImplCopyWith<_$AddStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditStoreImplCopyWith<$Res> {
  factory _$$EditStoreImplCopyWith(
          _$EditStoreImpl value, $Res Function(_$EditStoreImpl) then) =
      __$$EditStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreModel store});
}

/// @nodoc
class __$$EditStoreImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$EditStoreImpl>
    implements _$$EditStoreImplCopyWith<$Res> {
  __$$EditStoreImplCopyWithImpl(
      _$EditStoreImpl _value, $Res Function(_$EditStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
  }) {
    return _then(_$EditStoreImpl(
      null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreModel,
    ));
  }
}

/// @nodoc

class _$EditStoreImpl implements _EditStore {
  const _$EditStoreImpl(this.store);

  @override
  final StoreModel store;

  @override
  String toString() {
    return 'StoreEvent.editStore(store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditStoreImpl &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, store);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditStoreImplCopyWith<_$EditStoreImpl> get copyWith =>
      __$$EditStoreImplCopyWithImpl<_$EditStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStores,
    required TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)
        addStore,
    required TResult Function(StoreModel store) editStore,
    required TResult Function(String id) deleteStore,
  }) {
    return editStore(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStores,
    TResult? Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult? Function(StoreModel store)? editStore,
    TResult? Function(String id)? deleteStore,
  }) {
    return editStore?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStores,
    TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult Function(StoreModel store)? editStore,
    TResult Function(String id)? deleteStore,
    required TResult orElse(),
  }) {
    if (editStore != null) {
      return editStore(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStores value) fetchStores,
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_EditStore value) editStore,
    required TResult Function(_DeleteStore value) deleteStore,
  }) {
    return editStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStores value)? fetchStores,
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_EditStore value)? editStore,
    TResult? Function(_DeleteStore value)? deleteStore,
  }) {
    return editStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStores value)? fetchStores,
    TResult Function(_AddStore value)? addStore,
    TResult Function(_EditStore value)? editStore,
    TResult Function(_DeleteStore value)? deleteStore,
    required TResult orElse(),
  }) {
    if (editStore != null) {
      return editStore(this);
    }
    return orElse();
  }
}

abstract class _EditStore implements StoreEvent {
  const factory _EditStore(final StoreModel store) = _$EditStoreImpl;

  StoreModel get store;

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditStoreImplCopyWith<_$EditStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStoreImplCopyWith<$Res> {
  factory _$$DeleteStoreImplCopyWith(
          _$DeleteStoreImpl value, $Res Function(_$DeleteStoreImpl) then) =
      __$$DeleteStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteStoreImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$DeleteStoreImpl>
    implements _$$DeleteStoreImplCopyWith<$Res> {
  __$$DeleteStoreImplCopyWithImpl(
      _$DeleteStoreImpl _value, $Res Function(_$DeleteStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteStoreImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteStoreImpl implements _DeleteStore {
  const _$DeleteStoreImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'StoreEvent.deleteStore(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStoreImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStoreImplCopyWith<_$DeleteStoreImpl> get copyWith =>
      __$$DeleteStoreImplCopyWithImpl<_$DeleteStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStores,
    required TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)
        addStore,
    required TResult Function(StoreModel store) editStore,
    required TResult Function(String id) deleteStore,
  }) {
    return deleteStore(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStores,
    TResult? Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult? Function(StoreModel store)? editStore,
    TResult? Function(String id)? deleteStore,
  }) {
    return deleteStore?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStores,
    TResult Function(
            String? id,
            String name,
            String contact,
            String? image,
            double lat,
            double long,
            bool isVisited,
            DateTime visitedTime,
            String address)?
        addStore,
    TResult Function(StoreModel store)? editStore,
    TResult Function(String id)? deleteStore,
    required TResult orElse(),
  }) {
    if (deleteStore != null) {
      return deleteStore(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStores value) fetchStores,
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_EditStore value) editStore,
    required TResult Function(_DeleteStore value) deleteStore,
  }) {
    return deleteStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStores value)? fetchStores,
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_EditStore value)? editStore,
    TResult? Function(_DeleteStore value)? deleteStore,
  }) {
    return deleteStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStores value)? fetchStores,
    TResult Function(_AddStore value)? addStore,
    TResult Function(_EditStore value)? editStore,
    TResult Function(_DeleteStore value)? deleteStore,
    required TResult orElse(),
  }) {
    if (deleteStore != null) {
      return deleteStore(this);
    }
    return orElse();
  }
}

abstract class _DeleteStore implements StoreEvent {
  const factory _DeleteStore(final String id) = _$DeleteStoreImpl;

  String get id;

  /// Create a copy of StoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteStoreImplCopyWith<_$DeleteStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<StoreModel> storeList) loaded,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<StoreModel> storeList)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<StoreModel> storeList)? loaded,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res, StoreState>;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res, $Val extends StoreState>
    implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StoreState.loading()';
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
    required TResult Function(List<StoreModel> storeList) loaded,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<StoreModel> storeList)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<StoreModel> storeList)? loaded,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
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
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StoreState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StoreModel> storeList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeList = null,
  }) {
    return _then(_$LoadedImpl(
      null == storeList
          ? _value._storeList
          : storeList // ignore: cast_nullable_to_non_nullable
              as List<StoreModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<StoreModel> storeList) : _storeList = storeList;

  final List<StoreModel> _storeList;
  @override
  List<StoreModel> get storeList {
    if (_storeList is EqualUnmodifiableListView) return _storeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeList);
  }

  @override
  String toString() {
    return 'StoreState.loaded(storeList: $storeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._storeList, _storeList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_storeList));

  /// Create a copy of StoreState
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
    required TResult Function(List<StoreModel> storeList) loaded,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return loaded(storeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<StoreModel> storeList)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return loaded?.call(storeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<StoreModel> storeList)? loaded,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(storeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements StoreState {
  const factory _Loaded(final List<StoreModel> storeList) = _$LoadedImpl;

  List<StoreModel> get storeList;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StoreState.error(error: $error)';
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

  /// Create a copy of StoreState
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
    required TResult Function(List<StoreModel> storeList) loaded,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<StoreModel> storeList)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<StoreModel> storeList)? loaded,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
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
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StoreState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StoreState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<StoreModel> storeList) loaded,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<StoreModel> storeList)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<StoreModel> storeList)? loaded,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements StoreState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
