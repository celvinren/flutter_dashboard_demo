import 'dart:ui';

import 'package:design_theme/design_theme.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'DesignTheme',
    () {
      const theme = DesignTheme();
      expect(theme.dark.brightness, Brightness.dark);
      expect(theme.light.brightness, Brightness.light);
    },
  );
}
