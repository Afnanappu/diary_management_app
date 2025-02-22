part of 'route_bloc.dart';

@freezed
class RouteEvent with _$RouteEvent {
  /// Fetch all routes
  const factory RouteEvent.fetchRoutes() = _FetchRoutes;

  /// Add a new route
  const factory RouteEvent.addRoute({
    required String? id,
    required String routeName,
    required DriverModel driver,
    required Set<StoreModel> selectedStores,
  }) = _AddRoute;

  /// Edit an existing route
  const factory RouteEvent.editRoute({
    required String? id,
    required String routeName,
    required DriverModel driver,
    required Set<StoreModel> selectedStores,
  }) = _EditRoute;

  /// Delete a route by ID
  const factory RouteEvent.deleteRoute({
    required String id,
    required DriverModel driver,
    required List<StoreModel> selectedStores,
  }) = _DeleteRoute;
}
