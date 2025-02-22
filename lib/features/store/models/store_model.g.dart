// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreModelAdapter extends TypeAdapter<StoreModel> {
  @override
  final int typeId = 2;

  @override
  StoreModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreModel(
      id: fields[0] as String,
      name: fields[1] as String,
      contact: fields[2] as String,
      image: fields[3] as String?,
      lat: fields[4] as double,
      long: fields[5] as double,
      isVisited: fields[6] as bool,
      visitedTime: fields[7] as DateTime,
      address: fields[8] as String,
      routeId: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.contact)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.lat)
      ..writeByte(5)
      ..write(obj.long)
      ..writeByte(6)
      ..write(obj.isVisited)
      ..writeByte(7)
      ..write(obj.visitedTime)
      ..writeByte(8)
      ..write(obj.address)
      ..writeByte(9)
      ..write(obj.routeId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
