import 'package:json_annotation/json_annotation.dart';
part 'player_path.g.dart';

@JsonSerializable(anyMap: true, checked: true, fieldRename: FieldRename.snake)
class ChapterRef {
  String id;
  String? condition;

  ChapterRef(this.id, {this.condition});

  /// Factory function for creating from json, generated by json_serializable
  factory ChapterRef.fromJson(Map json) => _$ChapterRefFromJson(json);
}

@JsonSerializable(anyMap: true, checked: true, fieldRename: FieldRename.snake)
class PlayerPath {
  String? name;
  String chapterEntry;
  Map<String, List<ChapterRef>> path;

  PlayerPath(this.chapterEntry, this.path, {this.name});

  /// Factory function for creating from json, generated by json_serializable
  factory PlayerPath.fromJson(Map json) => _$PlayerPathFromJson(json);
}
