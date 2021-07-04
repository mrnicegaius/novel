// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:novel/model/novel.dart';
import 'package:yaml/yaml.dart';

const _basicNovel = '''
chapters:
  - id: p1c1a
    subs:
      - media:
        - audio:
            src: 'Source media 1a'

players:
  - chapter_entry: p1c1a
    path: {}
''';


const _branchingNovel = '''
name: Novel Name

state:
  test_state0: null

chapters:
  - id: p1c1a
    name: 'Chapter name'
    state:
      optional: null

    subs:
      - media:
        - audio:
            src: 'Source media 1a'

  - id: p1c2a
    name: 'p1c2a'
    subs:
      - media:
        - audio:
            src: 'Source media 2a'

  - id: p1c2b
    name: 'p1c2b'
    subs:
      - media:
        - audio:
            src: 'Source media 2b'

  - id: p1c3a
    name: 'p1c3a'
    subs:
      - media:
        - audio:
            src: 'Source media 3a'

players:
  - chapter_entry: p1c1a
    path:
      p1c1a:
        - id: p1c2a
          condition: test_state0 = 'tested'
        - id: p1c2b
      p1c2a:
        - id: p1c3a
      p1c2b:
        - id: p1c3a

''';

void main() {
  test('Novel can be loaded from basic yaml config', () {
    var novel = Novel.fromJson(loadYaml(_basicNovel));
  });

  test('Novel can be loaded from branching yaml config', () {
    var novel = Novel.fromJson(loadYaml(_branchingNovel));
  });
}
