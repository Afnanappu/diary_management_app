// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'route_model.g.dart';

@HiveType(typeId: 3)
class RouteModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String routeName;

  @HiveField(2)
  final String driverId;


  RouteModel({
    required this.id,
    required this.routeName,
    required this.driverId,
  });

  RouteModel copyWith({String? id, String? routeName, String? driverId}) {
    return RouteModel(
      id: id ?? this.id,
      routeName: routeName ?? this.routeName,
      driverId: driverId ?? this.driverId,
    );
  }

  factory RouteModel.fromMap(Map<String, dynamic> map) {
    return RouteModel(
      id: map['id'] as String,
      routeName: map['routeName'] as String,
      driverId: map['driverId'] as String,
    );
  }

  @override
  String toString() =>
      'RouteModel(id: $id, routeName: $routeName, driverId: $driverId)';

  @override
  bool operator ==(covariant RouteModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.routeName == routeName &&
        other.driverId == driverId;
  }

  @override
  int get hashCode => id.hashCode ^ routeName.hashCode ^ driverId.hashCode;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'routeName': routeName,
      'driverId': driverId,
    };
  }

  String toJson() => json.encode(toMap());

  factory RouteModel.fromJson(String source) =>
      RouteModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
