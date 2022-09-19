import 'package:alchemist/alchemist.dart';
import 'package:design_components/src/card_title.dart';
import 'package:flutter/src/widgets/basic.dart';

import '../match_golden.dart';

void main() async {
  await matchGolden(
    name: 'Card title test',
    pumpBeforeTest: pumpOnce,
    scenarios: [
      Scenario(
        name: 'Card title test',
        widget: const SizedBox(
          width: 320,
          child: CardTitle(
            title: 'Performance',
          ),
        ),
      ),
    ],
  );
}
