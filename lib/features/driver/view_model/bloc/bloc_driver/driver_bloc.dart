import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_event.dart';
part 'driver_state.dart';
part 'driver_bloc.freezed.dart';

class DriverBloc extends Bloc<DriverEvent, DriverState> {
  DriverBloc() : super(DriverState.loading()) {
    on<_FetchDrivers>(_onFetchDrivers);
  }

  Future<void> _onFetchDrivers(
    _FetchDrivers event,
    Emitter<DriverState> emit,
  ) async {
    emit(DriverState.loading());

    try {
      // TODO: Replace this with actual DB fetch logic
      // await Future.delayed(Duration(seconds: 1)); // Simulating DB fetch delay

      final driverList = [
        DriverModel(
          id: "D001",
          name: "John Doe",
          email: "john.doe@example.com",
          password: "password123",
          phoneNo: "+1234567890",
          profile: "https://example.com/profile1.jpg",
          routes: ["Route A", "Route B"],
        ),
        DriverModel(
          id: "D002",
          name: "Alice Smith",
          email: "alice.smith@example.com",
          password: "securePass456",
          phoneNo: "+0987654321",
          profile: "https://example.com/profile2.jpg",
          routes: ["Route C", "Route D"],
        ),
        DriverModel(
          id: "D003",
          name: "Michael Johnson",
          email: "michael.j@example.com",
          password: "mike123",
          phoneNo: "+1122334455",
          profile: "https://example.com/profile3.jpg",
          routes: ["Route E", "Route F"],
        ),
        DriverModel(
          id: "D004",
          name: "Emma Williams",
          email: "emma.w@example.com",
          password: "emmaSecure",
          phoneNo: "+5566778899",
          profile: "https://example.com/profile4.jpg",
          routes: ["Route G", "Route H"],
        ),
        DriverModel(
          id: "D005",
          name: "Robert Brown",
          email: "robert.b@example.com",
          password: "robertPass",
          phoneNo: "+6677889900",
          profile: "https://example.com/profile5.jpg",
          routes: ["Route I", "Route J"],
        ),
        DriverModel(
          id: "D004",
          name: "Emma Williams",
          email: "emma.w@example.com",
          password: "emmaSecure",
          phoneNo: "+5566778899",
          profile: "https://example.com/profile4.jpg",
          routes: ["Route G", "Route H"],
        ),
        DriverModel(
          id: "D004",
          name: "Emma Williams",
          email: "emma.w@example.com",
          password: "emmaSecure",
          phoneNo: "+5566778899",
          profile: "https://example.com/profile4.jpg",
          routes: ["Route G", "Route H"],
        ),
      ];

      emit(DriverState.loaded(driverList));
    } catch (e) {
      emit(DriverState.error(e.toString()));
    }
  }
}
