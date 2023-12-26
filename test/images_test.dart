import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:elif_site/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.elifLogo3).existsSync(), isTrue);
  });
}
