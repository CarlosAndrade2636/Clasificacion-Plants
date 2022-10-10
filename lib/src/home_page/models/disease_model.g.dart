// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiseaseAdapter extends TypeAdapter<Disease> {
  @override
  final int typeId = 0;

  @override
  Disease read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Disease(
      name: fields[0] as String,
      imagePath: fields[3] as String,
    )
      ..nombre_comun = fields[1] as String
      ..nombre_cientifico = fields[2] as String
      ..lugar_proviene = fields[4] as String
      ..lugar_adaptacion = fields[5] as String
      ..dateTime = fields[6] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Disease obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.nombre_comun)
      ..writeByte(2)
      ..write(obj.nombre_cientifico)
      ..writeByte(3)
      ..write(obj.lugar_proviene)
      ..writeByte(4)
      ..write(obj.lugar_adaptacion)
      ..writeByte(5)
      ..write(obj.imagePath)
      ..writeByte(6)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiseaseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
