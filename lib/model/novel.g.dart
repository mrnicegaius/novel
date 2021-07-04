// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Novel _$NovelFromJson(Map json) {
  return Novel(
    (json['chapters'] as List<dynamic>)
        .map((e) => Chapter.fromJson(e as Map))
        .toList(),
    (json['players'] as List<dynamic>)
        .map((e) => PlayerPath.fromJson(e as Map))
        .toList(),
    name: json['name'] as String?,
    state: json['state'],
  );
}

Map<String, dynamic> _$NovelToJson(Novel instance) => <String, dynamic>{
      'name': instance.name,
      'state': instance.state,
      'chapters': instance.chapters,
      'players': instance.players,
    };
