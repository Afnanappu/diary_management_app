import 'dart:developer';

import 'package:dairy_management_app/core/utils/generate_id.dart';
import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:dairy_management_app/features/driver/services/driver_services.dart';
import 'package:dairy_management_app/features/routes/models/route_model.dart';
import 'package:dairy_management_app/features/routes/services/routes_services.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/services/store_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_event.dart';
part 'route_state.dart';
part 'route_bloc.freezed.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  final RouteService _routeServices;
  final StoreServices _storeServices;
  final DriverServices _driverServices;

  RouteBloc({
    required RouteService routeServices,
    required StoreServices storeServices,
    required DriverServices driverServices,
  }) : _routeServices = routeServices,
       _driverServices = driverServices,
       _storeServices = storeServices,

       super(RouteState.loading()) {
    on<_FetchRoutes>(_onFetchRoutes);
    on<_AddRoute>(_addRoute);
    on<_EditRoute>(_editRoute);
    on<_DeleteRoute>(_deleteRoute);
  }

  Future<void> _addRoute(_AddRoute event, Emitter<RouteState> emit) async {
    final id = event.id ?? generateId();
    final route = RouteModel(
      id: id,
      routeName: event.routeName,
      driverId: event.driver.id,
    );
    try {
      //Create a routeModel in db
      await _routeServices.addOrUpdateRoute(route);

      //update the routeId in the store model
      for (var store in event.selectedStores) {
        await _storeServices.addOrUpdateStore(store..routeId = id);
      }

      add(RouteEvent.fetchRoutes());
      emit(RouteState.success('Route added successfully'));
    } catch (e) {
      log(e.toString());
      emit(RouteState.error(e.toString()));
    }
  }

  Future<void> _deleteRoute(
    _DeleteRoute event,
    Emitter<RouteState> emit,
  ) async {
    try {
      //Delete the route
      await _routeServices.deleteRoute(event.id);

      final updatedStores = {
        for (var store in event.selectedStores) store.id: store..routeId = null,
      };
      await _storeServices.addOrUpdateStores(updatedStores);

      add(RouteEvent.fetchRoutes());
      emit(RouteState.success('Route deleted successfully'));
    } catch (e) {
      log(e.toString());
      emit(RouteState.error(e.toString()));
    }
  }

  Future<void> _editRoute(_EditRoute event, Emitter<RouteState> emit) async {
    final route = RouteModel(
      id: event.id!,
      routeName: event.routeName,
      driverId: event.driver.id,
    );

    try {
      // Update routeModel in DB
      await _routeServices.addOrUpdateRoute(route);

      // Get only stores assigned to this route
      final previousStores = _storeServices.getStoresForRoute(event.id!);

      // Stores currently selected by user
      final selectedStores = event.selectedStores;

      // Find stores that need to be updated to null
      final storesToUnassign =
          previousStores
              .where((store) => !selectedStores.contains(store))
              .toList();

      // Find stores that need to be updated with new routeId
      final storesToAssign =
          selectedStores.where((store) => store.routeId != event.id).toList();

      // Batch update: Unassign routeId
      if (storesToUnassign.isNotEmpty) {
        final updatedStores = {
          for (var store in storesToUnassign) store.id: store..routeId = null,
        };
        await _storeServices.addOrUpdateStores(updatedStores);
      }

      // Batch update: Assign new routeId
      if (storesToAssign.isNotEmpty) {
        final updatedStores = {
          for (var store in storesToAssign) store.id: store..routeId = event.id,
        };
        await _storeServices.addOrUpdateStores(updatedStores);
      }

      // Update driver details
      await _driverServices.addOrUpdateDriver(event.driver);

      // Refresh routes
      add(RouteEvent.fetchRoutes());
      emit(RouteState.success('Route edited successfully'));
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      emit(RouteState.error(e.toString()));
    }
  }

  void _onFetchRoutes(_FetchRoutes event, Emitter<RouteState> emit) {
    final routeList = _routeServices.getAllRoutes();
    try {
      emit(RouteState.loaded(routeList));
    } catch (e) {
      log(e.toString());
      emit(RouteState.error(e.toString()));
    }
  }
}
