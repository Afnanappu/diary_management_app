part of 'store_bloc.dart';

@freezed
class StoreEvent with _$StoreEvent {
  const factory StoreEvent.fetchStores() = _FetchStores;
  const factory StoreEvent.addStore({
    required String? id,
    required String name,
    required String contact,
    required String? image,
    required double lat,
    required double long,
    required bool isVisited,
    required DateTime visitedTime,
    required String address,
  }) = _AddStore;
  const factory StoreEvent.editStore(StoreModel store) = _EditStore;
  const factory StoreEvent.deleteStore(String id) = _DeleteStore;
}
