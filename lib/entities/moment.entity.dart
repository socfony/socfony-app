import 'package:json_annotation/json_annotation.dart';

import 'entity.dart';
import 'user.entity.dart';

part 'moment.entity.g.dart';

@JsonSerializable()
class MomentEntity extends Entity<MomentEntity> {
  final String id;
  final String title;
  final String content;
  final DateTime createdAt;
  final String ownerId;
  final UserEntity owner;

  DateTime deletedAt;

  MomentEntity(
    this.id, {
    this.title,
    this.createdAt,
    this.content,
    this.deletedAt,
    this.owner,
    this.ownerId,
  });

  @override
  String get $id => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() => _$MomentEntityToJson(this);

  factory MomentEntity.fromJson(Map<String, dynamic> json) =>
      Entity.$fromJson(_$MomentEntityFromJson, json);
}