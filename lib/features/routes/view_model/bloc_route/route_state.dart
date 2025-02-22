part of 'route_bloc.dart';

@freezed
class RouteState with _$RouteState {
  const factory RouteState.loading() = _Loading;
  const factory RouteState.loaded(List<RouteModel> routeList) = _Loaded;
  const factory RouteState.error(String error) = _Error;
  const factory RouteState.success(String message) = _Success;
}
