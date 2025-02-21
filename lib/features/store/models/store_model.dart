// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'store_model.g.dart';

@HiveType(typeId: 2)
class StoreModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String contact;

  @HiveField(3)
  final String? image;

  @HiveField(4)
  final double lat;

  @HiveField(5)
  final double long;

  @HiveField(6)
  final bool isVisited;

  @HiveField(7)
  final DateTime visitedTime;

  @HiveField(8)
  final String address;
  StoreModel({
    required this.id,
    required this.name,
    required this.contact,
    this.image,
    required this.lat,
    required this.long,
    required this.isVisited,
    required this.visitedTime,
    required this.address,
  });

  StoreModel copyWith({
    String? id,
    String? name,
    String? contact,
    String? image,
    double? lat,
    double? long,
    bool? isVisited,
    DateTime? visitedTime,
    String? address,
  }) {
    return StoreModel(
      id: id ?? this.id,
      name: name ?? this.name,
      contact: contact ?? this.contact,
      image: image ?? this.image,
      lat: lat ?? this.lat,
      long: long ?? this.long,
      isVisited: isVisited ?? this.isVisited,
      visitedTime: visitedTime ?? this.visitedTime,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'contact': contact,
      'image': image,
      'lat': lat,
      'long': long,
      'isVisited': isVisited,
      'visitedTime': visitedTime.millisecondsSinceEpoch,
      'address': address,
    };
  }

  factory StoreModel.fromMap(Map<String, dynamic> map) {
    return StoreModel(
      id: map['id'] as String,
      name: map['name'] as String,
      contact: map['contact'] as String,
      image: map['image'] != null ? map['image'] as String : null,
      lat: map['lat'] as double,
      long: map['long'] as double,
      isVisited: map['isVisited'] as bool,
      visitedTime: DateTime.fromMillisecondsSinceEpoch(
        map['visitedTime'] as int,
      ),
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreModel.fromJson(String source) =>
      StoreModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StoreModel(id: $id, name: $name, contact: $contact, image: $image, lat: $lat, long: $long, isVisited: $isVisited, visitedTime: $visitedTime, address: $address)';
  }

  @override
  bool operator ==(covariant StoreModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.contact == contact &&
        other.image == image &&
        other.lat == lat &&
        other.long == long &&
        other.isVisited == isVisited &&
        other.visitedTime == visitedTime &&
        other.address == address;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        contact.hashCode ^
        image.hashCode ^
        lat.hashCode ^
        long.hashCode ^
        isVisited.hashCode ^
        visitedTime.hashCode ^
        address.hashCode;
  }
}
