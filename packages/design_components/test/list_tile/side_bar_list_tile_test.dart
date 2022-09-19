import 'package:alchemist/alchemist.dart';
import 'package:design_components/src/side_bar_list_tile.dart';
import 'package:flutter/material.dart';

import '../match_golden.dart';

void main() async {
  await matchGolden(
    name: 'Side bar listTile test',
    pumpBeforeTest: pumpOnce,
    scenarios: [
      Scenario(
        name: 'Side bar listTile test',
        widget: Container(
          color: Colors.white,
          width: 320,
          child: const SideBarListTile(
            leadingWidget: Icon(
              Icons.edit_calendar_outlined,
              color: Color(0xFF526581),
            ),
            title: 'Orders',
            value: '30',
          ),
        ),
      ),
      Scenario(
        name: 'Side bar listTile test',
        widget: Container(
          color: const Color(0xff1B2130),
          width: 320,
          child: const SideBarListTile(
            leadingWidget: Icon(
              Icons.edit_calendar_outlined,
              color: Color.fromRGBO(255, 255, 255, 0.7),
            ),
            title: 'Orders',
            value: '30',
          ),
        ),
      ),
      Scenario(
        name: 'Side bar listTile without value test',
        widget: Container(
          color: Colors.white,
          width: 320,
          child: const SideBarListTile(
            leadingWidget: Icon(
              Icons.edit_calendar_outlined,
              color: Color(0xFF526581),
            ),
            title: 'Orders',
          ),
        ),
      ),
      Scenario(
        name: 'Side bar listTile without value test',
        widget: Container(
          color: const Color(0xff1B2130),
          width: 320,
          child: const SideBarListTile(
            leadingWidget: Icon(
              Icons.edit_calendar_outlined,
              color: Color.fromRGBO(255, 255, 255, 0.7),
            ),
            title: 'Orders',
          ),
        ),
      ),
    ],
  );
}
