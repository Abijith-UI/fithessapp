// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModelAdapter extends TypeAdapter<LoginModel> {
  @override
  final int typeId = 1;

  @override
  LoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginModel(
      status: fields[1] as int?,
      message: fields[2] as String?,
      data: fields[3] as Data?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.message)
      ..writeByte(3)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataAdapter extends TypeAdapter<Data> {
  @override
  final int typeId = 2;

  @override
  Data read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Data(
      UdId: fields[1] as String?,
      UdName: fields[2] as String?,
      UdAge: fields[3] as String?,
      UdWeight: fields[4] as String?,
      UdHeight: fields[5] as String?,
      Udgmail: fields[6] as String?,
      UdPassword: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Data obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.UdId)
      ..writeByte(2)
      ..write(obj.UdName)
      ..writeByte(3)
      ..write(obj.UdAge)
      ..writeByte(4)
      ..write(obj.UdWeight)
      ..writeByte(5)
      ..write(obj.UdHeight)
      ..writeByte(6)
      ..write(obj.Udgmail)
      ..writeByte(7)
      ..write(obj.UdPassword);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
