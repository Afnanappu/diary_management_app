part of 'driver_bloc.dart';

@freezed
class DriverEvent with _$DriverEvent {
  const factory DriverEvent.fetchDrivers() = _FetchDrivers;
  const factory DriverEvent.addDrivers({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String? profile,
  }) = _AddDrivers;
  const factory DriverEvent.editDriver(String id) = _EditDriver;
  const factory DriverEvent.deleteDriver(String id) = _DeleteDriver;
}
