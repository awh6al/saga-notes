// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_schema.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotesHiveSchemaAdapter extends TypeAdapter<NotesHiveSchema> {
  @override
  final int typeId = 0;

  @override
  NotesHiveSchema read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotesHiveSchema()
      ..id = fields[0] as int
      ..createdAt = fields[1] as DateTime
      ..title = fields[2] as String
      ..textPreview = fields[3] as String
      ..alarm = fields[4] as DateTime?
      ..expired = fields[5] as bool?
      ..notchColor = fields[6] as Color?
      ..hashtag = (fields[7] as List?)?.cast<String>();
  }

  @override
  void write(BinaryWriter writer, NotesHiveSchema obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.textPreview)
      ..writeByte(4)
      ..write(obj.alarm)
      ..writeByte(5)
      ..write(obj.expired)
      ..writeByte(6)
      ..write(obj.notchColor)
      ..writeByte(7)
      ..write(obj.hashtag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotesHiveSchemaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
