part of 'driver_bloc.dart';

@freezed
class DriverEvent with _$DriverEvent {
  const factory DriverEvent.fetchDrivers() = _FetchDrivers;
  const factory DriverEvent.addDrivers({
    required String? id,
    required String name,
    required String email,
    required String password,
    required String phone,
    required String? profile,
    required List<String> routes,
  }) = _AddDrivers;
  const factory DriverEvent.editDriver(DriverModel driver) = _EditDriver;
  const factory DriverEvent.deleteDriver(String id) = _DeleteDriver;
}
