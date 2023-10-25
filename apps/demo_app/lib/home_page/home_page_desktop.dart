import 'dart:math';

import 'package:app_blocs/app_blocs.dart';
import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/bar_chart_card.dart';
import 'widgets/left_menu.dart';
import 'widgets/line_chart_card.dart';
import 'widgets/pie_chart_card.dart';

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
const bodyPaddingVertical = 30.0;
const bodyPaddingHorizontal = 24.0;

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
            LeftMenu(),
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
            vertical: bodyPaddingVertical,
            horizontal: bodyPaddingHorizontal,
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
                      bodyPaddingVertical * 2) /
                  2,
              child: const Row(
                children: [
                  Expanded(flex: 2, child: BarChartCard()),
                  SizedBox(width: 333, child: _DataListCard()),
                ],
              ),
            ),
            SizedBox(
              width: constraint.maxWidth,
              height: (MediaQuery.sizeOf(context).height -
                      _topCardHeight -
                      bodyPaddingVertical * 2) /
                  2,
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: LineChartCard(),
                  ),
                  SizedBox(
                    width: 333,
                    height: constraint.maxHeight,
                    child: const PieChartCard(),
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
              child: BarChartCard(),
            ),
            const SizedBox(
              height: 300,
              child: LineChartCard(),
            ),
            SizedBox(
              width: constraint.maxWidth,
              height: 400,
              child: const PieChartCard(),
            ),
          ],
        ),
      );
}

class _DataListCard extends StatelessWidget {
  const _DataListCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical),
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

class _FloatingButton extends StatelessWidget {
  const _FloatingButton();

  @override
  Widget build(final BuildContext context) => FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().onChangeTheme(),
        tooltip: 'Change Theme',
        child: const Icon(Icons.brightness_4),
      );
}
