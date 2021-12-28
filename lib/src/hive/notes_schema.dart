import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'notes_schema.g.dart';

@HiveType(typeId: 0)
class NotesHiveSchema {
  @HiveField(0)
  late final int id;

  @HiveField(1)
  late final DateTime createdAt;

  @HiveField(2)
  late final String title;

  @HiveField(3)
  late final String textPreview;

  @HiveField(4)
  late final DateTime? alarm;

  @HiveField(5)
  late final bool? expired;

  @HiveField(6)
  late final Color? notchColor;

  @HiveField(7)
  late final List<String>? hashtag;
}
