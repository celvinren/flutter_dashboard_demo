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
          value: '2,765',
          isUp: true,
          percent: 1.2,
        ),
      ),
      Scenario(
        name: 'Value info component test',
        widget: ValueInfoComponent(
          icon: SvgIcon.asset('assets/user_4_fill.svg'),
          title: 'User',
          value: '2,765',
          isUp: false,
          percent: 1.2,
        ),
      ),
    ],
  );
}
