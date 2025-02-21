import 'package:dairy_management_app/core/utils/generate_id.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/services/store_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_event.dart';
part 'store_state.dart';
part 'store_bloc.freezed.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  final StoreServices _services = StoreServices();

  StoreBloc() : super(StoreState.loading()) {
    on<_FetchStores>(_onFetchStores);
    on<_AddStore>(_addStore);
    on<_EditStore>(_editStore);
    on<_DeleteStore>(_deleteStore);
  }

  Future<void> _addStore(_AddStore event, Emitter<StoreState> emit) async {
    final store = StoreModel(
      id: event.id ?? generateId(),
      name: event.name,
      contact: event.contact,
      image: event.image,
      lat: event.lat,
      long: event.long,
      isVisited: event.isVisited,
      visitedTime: event.visitedTime,
      address: event.address,
    );

    try {
      await _services.addOrUpdateStore(store);
      add(StoreEvent.fetchStores());
      emit(StoreState.success('Store added successfully'));
    } catch (e) {
      emit(StoreState.error(e.toString()));
    }
  }

  Future<void> _deleteStore(
    _DeleteStore event,
    Emitter<StoreState> emit,
  ) async {
    try {
      await _services.deleteStore(event.id);
      add(StoreEvent.fetchStores());
      emit(StoreState.success('Store deleted successfully'));
    } catch (e) {
      emit(StoreState.error(e.toString()));
    }
  }

  Future<void> _editStore(_EditStore event, Emitter<StoreState> emit) async {
    try {
      await _services.addOrUpdateStore(event.store);
      add(StoreEvent.fetchStores());
      emit(StoreState.success('Store edited successfully'));
    } catch (e) {
      emit(StoreState.error(e.toString()));
    }
  }

  void _onFetchStores(_FetchStores event, Emitter<StoreState> emit) {
    final storeList = _services.getAllStores();
    try {
      emit(StoreState.loaded(storeList));
    } catch (e) {
      emit(StoreState.error(e.toString()));
    }
  }
}
