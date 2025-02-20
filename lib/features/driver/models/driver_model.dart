// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'driver_model.g.dart';

@HiveType(typeId: 1)
class DriverModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String password;

  @HiveField(4)
  final String phoneNo;

  @HiveField(5)
  final String profile;

  @HiveField(6)
  final List<String> routes;

  DriverModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phoneNo,
    required this.profile,
    required this.routes,
  });

  DriverModel copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? phoneNo,
    String? profile,
    List<String>? routes,
  }) {
    return DriverModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNo: phoneNo ?? this.phoneNo,
      profile: profile ?? this.profile,
      routes: routes ?? this.routes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'phoneNo': phoneNo,
      'profile': profile,
      'routes': routes,
    };
  }

  factory DriverModel.fromMap(Map<String, dynamic> map) {
    return DriverModel(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      phoneNo: map['phoneNo'] as String,
      profile: map['profile'] as String,
      routes: List<String>.from((map['routes'] as List<String>)),
    );
  }

  @override
  String toString() {
    return 'DriverModel(id: $id, name: $name, email: $email, password: $password, phoneNo: $phoneNo, profile: $profile, routes: $routes)';
  }

  @override
  bool operator ==(covariant DriverModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.password == password &&
        other.phoneNo == phoneNo &&
        other.profile == profile &&
        listEquals(other.routes, routes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        password.hashCode ^
        phoneNo.hashCode ^
        profile.hashCode ^
        routes.hashCode;
  }

  String toJson() => json.encode(toMap());

  factory DriverModel.fromJson(String source) =>
      DriverModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
