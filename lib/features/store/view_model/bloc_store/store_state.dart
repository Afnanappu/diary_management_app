part of 'store_bloc.dart';

@freezed
class StoreState with _$StoreState {
  const factory StoreState.loading() = _Loading;
  const factory StoreState.loaded(List<StoreModel> storeList) = _Loaded;
  const factory StoreState.error(String error) = _Error;
  const factory StoreState.success(String message) = _Success;
}
