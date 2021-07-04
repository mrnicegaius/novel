import 'package:json_annotation/json_annotation.dart';

typedef State = Map<String, dynamic>;

State fromMap(var state) {
  if (state.runtimeType == 'YamlMap')
    return Map.fromIterable(state.nodes.entries,
      key: (el) => el as String,
      value: (el) => el.value);
  else if (state == null)
    return State();
  else
    return Map.from(state);
}
