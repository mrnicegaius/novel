// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choice _$ChoiceFromJson(Map json) {
  return $checkedNew('Choice', json, () {
    final val = Choice(
      $checkedConvert(json, 'short', (v) => v),
      $checkedConvert(json, 'long', (v) => v),
      $checkedConvert(json, 'action', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'action': instance.action,
    };

EndAction _$EndActionFromJson(Map json) {
  return $checkedNew('EndAction', json, () {
    final val = EndAction(
      $checkedConvert(json, 'type', (v) => _$enumDecode(_$EndTypeEnumMap, v)),
      choices: $checkedConvert(
          json,
          'choices',
          (v) => (v as List<dynamic>?)
              ?.map((e) => Choice.fromJson(e as Map))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$EndActionToJson(EndAction instance) => <String, dynamic>{
      'type': _$EndTypeEnumMap[instance.type],
      'choices': instance.choices,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$EndTypeEnumMap = {
  EndType.carryOn: 'continue',
  EndType.pause: 'pause',
  EndType.decision: 'decision',
};

SubChapter _$SubChapterFromJson(Map json) {
  return $checkedNew('SubChapter', json, () {
    final val = SubChapter(
      $checkedConvert(
          json,
          'media',
          (v) => (v as List<dynamic>)
              .map((e) => Media.fromJson(e as Map))
              .toList()),
      atEnd: $checkedConvert(json, 'at_end', (v) => v),
    );
    return val;
  }, fieldKeyMap: const {'atEnd': 'at_end'});
}

Map<String, dynamic> _$SubChapterToJson(SubChapter instance) =>
    <String, dynamic>{
      'media': instance.media,
      'at_end': instance.atEnd,
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
