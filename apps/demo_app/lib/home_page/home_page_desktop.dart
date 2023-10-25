import 'dart:math';

import 'package:app_blocs/app_blocs.dart';
import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bar_chart/bar_chart_card.dart';
import '../line_chart/line_chart_card.dart';
import '../pie_chart/pie_chart_card.dart';

enum _HomePageDesktopLayout {
  large,
  medium,
  small;

  static _HomePageDesktopLayout getLayout(final double width) {
    if (width < 770) {
      return _HomePageDesktopLayout.small;
    } else if (width < 1100) {
      return _HomePageDesktopLayout.medium;
    } else {
      return _HomePageDesktopLayout.large;
    }
  }
}

const _topCardHeight = 88.0;
const _bodyPaddingVertical = 30.0;
const _bodyPaddingHorizontal = 24.0;

///
class HomePageDesktop extends StatelessWidget {
  ///
  const HomePageDesktop({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _LeftMenu(),
            _Body(),
          ],
        ),
        floatingActionButton: _FloatingButton(),
      );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(final BuildContext context) => const Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: _bodyPaddingVertical,
            horizontal: _bodyPaddingHorizontal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TopCards(),
              _Charts(),
            ],
          ),
        ),
      );
}

class _TopCards extends StatelessWidget {
  const _TopCards();

  static const _percent = 100;
  static const _decimal = 2;
  @override
  Widget build(final BuildContext context) => Card(
        child: SizedBox(
          height: _topCardHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ValueInfoComponent(
                icon: SvgIcon.asset('assets/user_4_fill.svg'),
                title: 'User',
                value: '2,765',
                isUp: true,
                percent: (Random().nextDouble() * _percent)
                    .toStringAsFixed(_decimal),
              ),
              ValueInfoComponent(
                icon: SvgIcon.asset(
                  'assets/chart_pie_fill.svg',
                ),
                title: 'New',
                value: '253',
                isUp: false,
                percent: (Random().nextDouble() * _percent)
                    .toStringAsFixed(_decimal),
              ),
              ValueInfoComponent(
                icon: SvgIcon.asset('assets/tag_fill.svg'),
                title: 'Average',
                value: '896',
                isUp: true,
                percent: (Random().nextDouble() * _percent)
                    .toStringAsFixed(_decimal),
              ),
              ValueInfoComponent(
                icon: SvgIcon.asset('assets/wallet_4_fill.svg'),
                title: 'Total',
                value: '253',
                isUp: false,
                percent: (Random().nextDouble() * _percent)
                    .toStringAsFixed(_decimal),
              ),
            ],
          ),
        ),
      );
}

class _Charts extends StatelessWidget {
  const _Charts();

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraintMain) =>
            switch (_HomePageDesktopLayout.getLayout(
          constraintMain.maxWidth,
        )) {
          _HomePageDesktopLayout.large ||
          _HomePageDesktopLayout.medium =>
            const _ChartsLarge(),
          _HomePageDesktopLayout.small => const _ChartsSmall(),
        },
      );
}

class _ChartsLarge extends StatelessWidget {
  const _ChartsLarge();

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraint) => Column(
          children: [
            SizedBox(
              width: constraint.maxWidth,
              height: (MediaQuery.sizeOf(context).height -
                      _topCardHeight -
                      _bodyPaddingVertical * 2) /
                  2,
              child: const Row(
                children: [
                  Expanded(flex: 2, child: _BarChartCard()),
                  SizedBox(width: 333, child: _DataListCard()),
                ],
              ),
            ),
            SizedBox(
              width: constraint.maxWidth,
              height: (MediaQuery.sizeOf(context).height -
                      _topCardHeight -
                      _bodyPaddingVertical * 2) /
                  2,
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: _LineChartCard(),
                  ),
                  SizedBox(
                    width: 333,
                    height: constraint.maxHeight,
                    child: const _PieChartCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class _ChartsSmall extends StatelessWidget {
  const _ChartsSmall();

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraint) => Column(
          children: [
            const SizedBox(
              height: 333,
              child: _DataListCard(),
            ),
            const SizedBox(
              height: 300,
              child: _BarChartCard(),
            ),
            const SizedBox(
              height: 300,
              child: _LineChartCard(),
            ),
            SizedBox(
              width: constraint.maxWidth,
              height: 400,
              child: const _PieChartCard(),
            ),
          ],
        ),
      );
}

class _BarChartCard extends StatelessWidget {
  const _BarChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(_bodyPaddingVertical),
          child: BarChartSample2(),
        ),
      );
}

class _PieChartCard extends StatelessWidget {
  const _PieChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(_bodyPaddingVertical),
          child: PieChartSample2(),
        ),
      );
}

class _LineChartCard extends StatelessWidget {
  const _LineChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(_bodyPaddingVertical),
          child: LineChartSample1(),
        ),
      );
}

class _DataListCard extends StatelessWidget {
  const _DataListCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(_bodyPaddingVertical),
          child: Column(
            children: [
              Row(
                children: [
                  CardTitle(title: 'Details'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TitleValueListTile(
                title: 'Previous Close',
                value: '4,324.32',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'Year Range',
                value: '4,834.32 - 4,932.53',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'Day Range',
                value: '2,623.28 - 3,823.74',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'Market Cap',
                value: r'$23.7 T USD',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'P/E Ratio',
                value: '82.73',
              ),
            ],
          ),
        ),
      );
}

class _LeftMenu extends StatelessWidget {
  const _LeftMenu();

  static const _menuWidth = 280.0;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final onSurface = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade300
        : theme.colorScheme.onSurface;
    return Container(
      width: _menuWidth,
      height: MediaQuery.of(context).size.height,
      color: theme.colorScheme.surface,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/home_light.svg',
                          color: onSurface,
                        ),
                        title: 'Dashboard',
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/clipboard_light.svg',
                          color: onSurface,
                        ),
                        title: 'Orders',
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/schedule_light.svg',
                          color: onSurface,
                        ),
                        title: 'Schedules',
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/message_light.svg',
                          color: onSurface,
                        ),
                        title: 'Messages',
                        value: '15',
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/inbox_light.svg',
                          color: onSurface,
                        ),
                        title: 'Inbox',
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/chart_bar_light.svg',
                          color: onSurface,
                        ),
                        title: 'Analytics',
                      ),
                      Divider(
                        thickness: 1,
                        color: theme.colorScheme.background,
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/news_light.svg',
                          color: onSurface,
                        ),
                        title: 'News',
                      ),
                      SideBarListTile(
                        leadingWidget: SvgIcon.asset(
                          'assets/side_bar_icons/settings_light.svg',
                          color: onSurface,
                        ),
                        title: 'Settings',
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: const ProfileListTile(
                leadingImage: ImageAssetProvider('assets/user_profile.png'),
                title: 'Richard',
                subtitle: '9394lay@gmail.com',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton();

  @override
  Widget build(final BuildContext context) => FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().onChangeTheme(),
        tooltip: 'Change Theme',
        child: const Icon(Icons.brightness_4),
      );
}
