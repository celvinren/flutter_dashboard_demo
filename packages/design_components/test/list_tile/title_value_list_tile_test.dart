import 'package:alchemist/alchemist.dart';
import 'package:design_components/design_components.dart';
import 'package:flutter/src/widgets/basic.dart';

import '../match_golden.dart';

void main() async {
  await matchGolden(
    name: 'Title value listTile test',
    pumpBeforeTest: pumpOnce,
    // whilePerforming: (final tester) async {
    //   final button = find.byType(LicenseItem).first;
    //   await tester.tap(button);
    //   await tester.pumpAndSettle();

    //   return null;
    // },
    scenarios: [
      Scenario(
        name: 'Title value listTile test',
        widget: const SizedBox(
          width: 320,
          child: TitleValueListTile(
            title: 'Year Range',
            value: '4,834.32 - 4,932.53',
          ),
        ),
      ),
    ],
  );
}
