part of 'driver_bloc.dart';

@freezed
class DriverState with _$DriverState {
  const factory DriverState.loading() = _Loading;
  const factory DriverState.loaded(List<DriverModel> driverList) = _Loaded;
  const factory DriverState.error(String error) = _Error;
  const factory DriverState.success(String message) = _Success;
}
