// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterRef _$ChapterRefFromJson(Map json) {
  return $checkedNew('ChapterRef', json, () {
    final val = ChapterRef(
      $checkedConvert(json, 'id', (v) => v as String),
      condition: $checkedConvert(json, 'condition', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$ChapterRefToJson(ChapterRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'condition': instance.condition,
    };

PlayerPath _$PlayerPathFromJson(Map json) {
  return $checkedNew('PlayerPath', json, () {
    final val = PlayerPath(
      $checkedConvert(json, 'chapter_entry', (v) => v as String),
      $checkedConvert(
          json,
          'path',
          (v) => (v as Map).map(
                (k, e) => MapEntry(
                    k as String,
                    (e as List<dynamic>)
                        .map((e) => ChapterRef.fromJson(e as Map))
                        .toList()),
              )),
      name: $checkedConvert(json, 'name', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'chapterEntry': 'chapter_entry'});
}

Map<String, dynamic> _$PlayerPathToJson(PlayerPath instance) =>
    <String, dynamic>{
      'name': instance.name,
      'chapter_entry': instance.chapterEntry,
      'path': instance.path,
    };
