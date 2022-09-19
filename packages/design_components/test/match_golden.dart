import 'package:alchemist/alchemist.dart';
import 'package:design_theme/design_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const _theme = DesignTheme();
const _columns = 2;

class Scenario {
  Scenario({
    required this.widget,
    this.name,
  });

  final Widget widget;
  final String? name;
}

/// Golden helper.
Future<void> matchGolden({
  required final String name,
  required final List<Scenario> scenarios,
  final Future<void> Function(WidgetTester) pumpBeforeTest = onlyPumpAndSettle,
  final Future<Future<void> Function()?> Function(WidgetTester)?
      whilePerforming,
}) async =>
    goldenTest(
      name,
      fileName: name.replaceAll(' ', '_').toLowerCase(),
      pumpBeforeTest: pumpBeforeTest,
      whilePerforming: whilePerforming,
      builder: () => GoldenTestGroup(
        columns: _columns,
        children: [
          for (final scenario in scenarios)
            GoldenTestScenario(
              name: '${scenario.name ?? name} light',
              child: Theme(data: _theme.light, child: scenario.widget),
            ),
          // for (final scenario in scenarios)
          //   GoldenTestScenario.withTextScaleFactor(
          //     name: '${scenario.name ?? name} light large text scale',
          //     textScaleFactor: _largeTextScaleSize,
          //     child: Theme(
          //       data: _theme.light,
          //       child: scenario.widget,
          //     ),
          //   ),
          for (final scenario in scenarios)
            GoldenTestScenario(
              name: '${scenario.name ?? name} dark',
              child: Theme(data: _theme.dark, child: scenario.widget),
            ),
          // for (final scenario in scenarios)
          //   GoldenTestScenario.withTextScaleFactor(
          //     name: '${scenario.name ?? name} dark large text scale',
          //     textScaleFactor: _largeTextScaleSize,
          //     child: Theme(
          //       data: _theme.dark,
          //       child: scenario.widget,
          //     ),
          //   ),
        ],
      ),
    );
