// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Audio _$AudioFromJson(Map json) {
  return $checkedNew('Audio', json, () {
    final val = Audio(
      $checkedConvert(json, 'src', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$AudioToJson(Audio instance) => <String, dynamic>{
      'src': instance.src,
    };
