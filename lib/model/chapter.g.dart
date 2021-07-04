// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubChapter _$SubChapterFromJson(Map json) {
  return $checkedNew('SubChapter', json, () {
    final val = SubChapter(
      $checkedConvert(
          json,
          'media',
          (v) => (v as List<dynamic>)
              .map((e) => Media.fromJson(e as Map))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$SubChapterToJson(SubChapter instance) =>
    <String, dynamic>{
      'media': instance.media,
    };

Chapter _$ChapterFromJson(Map json) {
  return Chapter(
    json['id'] as String,
    (json['subs'] as List<dynamic>)
        .map((e) => SubChapter.fromJson(e as Map))
        .toList(),
    name: json['name'] as String?,
    state: json['state'],
  );
}

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'subs': instance.subs,
    };
