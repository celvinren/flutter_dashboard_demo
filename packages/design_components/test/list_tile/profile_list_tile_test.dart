import 'package:alchemist/alchemist.dart';
import 'package:design_components/src/profile_list_tile.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';

import '../match_golden.dart';

void main() async {
  await matchGolden(
    name: 'Profile listTile test',
    pumpBeforeTest: pumpOnce,
    scenarios: [
      Scenario(
        name: 'Profile listTile test',
        widget: Container(
          color: Colors.white,
          width: 320,
          child: ProfileListTile(
            leadingWidget: ImageAssetIcon.asset('assets/user_profile.png'),
            title: 'Richard',
            subtitle: '9394lay@gmail.com',
          ),
        ),
      ),
      Scenario(
        name: 'Profile listTile test',
        widget: Container(
          color: const Color(0xff1B2130),
          width: 320,
          child: ProfileListTile(
            leadingWidget: ImageAssetIcon.asset('assets/user_profile.png'),
            title: 'Richard',
            subtitle: '9394lay@gmail.com',
          ),
        ),
      ),
    ],
  );
}
