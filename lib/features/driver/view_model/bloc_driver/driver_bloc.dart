import 'dart:async';
import 'package:dairy_management_app/core/utils/generate_id.dart';
import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:dairy_management_app/features/driver/services/driver_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_event.dart';
part 'driver_state.dart';
part 'driver_bloc.freezed.dart';

class DriverBloc extends Bloc<DriverEvent, DriverState> {
  final DriverServices _services;
  DriverBloc(this._services) : super(DriverState.loading()) {
    on<_FetchDrivers>(_onFetchDrivers);
    on<_AddDrivers>(_addDriver);
    on<_EditDriver>(_editDriver);
    on<_DeleteDriver>(_deleteDriver);
  }

  Future<void> _addDriver(_AddDrivers event, Emitter<DriverState> emit) async {
    final driver = DriverModel(
      id: event.id ?? generateId(),
      name: event.name,
      email: event.email,
      password: event.password,
      phoneNo: event.phone,
      profile: event.profile!,
    );

    try {
      await _services.addOrUpdateDriver(driver);
      add(DriverEvent.fetchDrivers());
      emit(DriverState.success('Driver added successfully'));
    } catch (e) {
      emit(DriverState.error(e.toString()));
    }
  }

  Future<void> _deleteDriver(
    _DeleteDriver event,
    Emitter<DriverState> emit,
  ) async {
    try {
      await _services.deleteDriver(event.id);
      add(DriverEvent.fetchDrivers());
      emit(DriverState.success('Driver deleted successfully'));
    } catch (e) {
      emit(DriverState.error(e.toString()));
    }
  }

  Future<void> _editDriver(_EditDriver event, Emitter<DriverState> emit) async {
    try {
      await _services.addOrUpdateDriver(event.driver);
      add(DriverEvent.fetchDrivers());
      emit(DriverState.success('Driver edited successfully'));
    } catch (e) {
      emit(DriverState.error(e.toString()));
    }
  }

  void _onFetchDrivers(_FetchDrivers event, Emitter<DriverState> emit) {
    final driverList = _services.getAllDriver();
    try {
      emit(DriverState.loaded(driverList));
    } catch (e) {
      emit(DriverState.error(e.toString()));
    }
  }

  ///Get driver details by the given Id.
  DriverModel getDriverDetails(String id) {
    return _services.getDriverDetails(id)!;
  }

  ///Get driver details by the given Id.
  List<DriverModel> getDriverStores(String driverId) {
    return _services.getDriverStores(driverId);
  }
}
