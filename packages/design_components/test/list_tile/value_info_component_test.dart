import 'package:alchemist/alchemist.dart';
import 'package:design_components/src/value_info_component.dart';
import 'package:design_icons/design_icons.dart';

import '../match_golden.dart';

void main() async {
  await matchGolden(
    name: 'Value info component test',
    pumpBeforeTest: pumpOnce,
    scenarios: [
      Scenario(
        name: 'Value info component test',
        widget: ValueInfoComponent(
          icon: SvgIcon.asset('assets/user_4_fill.svg'),
          title: 'User',
          value: 2765,
          isUp: 2765 >= 1000,
          previousValue: 1000,
        ),
      ),
      Scenario(
        name: 'Value info component test',
        widget: ValueInfoComponent(
          icon: SvgIcon.asset('assets/user_4_fill.svg'),
          title: 'User',
          value: 2765,
          isUp: false,
          previousValue: 3000,
        ),
      ),
    ],
  );
}
