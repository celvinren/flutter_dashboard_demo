import 'dart:math';

import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';

import 'widgets/bar_chart_card.dart';
import 'widgets/data_list_card.dart';
import 'widgets/floating_button.dart';
import 'widgets/left_menu.dart';
import 'widgets/line_chart_card.dart';
import 'widgets/pie_chart_card.dart';

const _valueFontSize = 18.0;

///
class HomePageMobile extends StatelessWidget {
  ///
  const HomePageMobile({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Demo',
          ),
        ),
        drawer: const LeftMenu(),
        body: const _Body(),
        floatingActionButton: const FloatingButton(),
      );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(final BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: LayoutBuilder(
            builder: (final context, final constraint) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const _TopCards(),
                const DataListCard(),
                const SizedBox(
                  height: 300,
                  child: LineChartCard(),
                ),
                const SizedBox(
                  height: 300,
                  child: BarChartCard(),
                ),
                SizedBox(
                  width: constraint.maxWidth,
                  height: 400,
                  child: const PieChartCard(),
                ),
              ],
            ),
          ),
        ),
      );
}

class _TopCards extends StatelessWidget {
  const _TopCards();

  @override
  Widget build(final BuildContext context) {
    const percent = 100;
    const decimal = 2;
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ValueInfoComponent(
          icon: SvgIcon.asset('assets/user_4_fill.svg'),
          title: 'User',
          value: '2,765',
          isUp: true,
          fontSizeOverride: _valueFontSize,
          percent: (Random().nextDouble() * percent).toStringAsFixed(decimal),
        ),
        ValueInfoComponent(
          icon: SvgIcon.asset('assets/chart_pie_fill.svg'),
          title: 'New',
          value: '253',
          isUp: false,
          fontSizeOverride: _valueFontSize,
          percent: (Random().nextDouble() * percent).toStringAsFixed(decimal),
        ),
        ValueInfoComponent(
          icon: SvgIcon.asset('assets/tag_fill.svg'),
          title: 'Average',
          value: '896',
          isUp: true,
          fontSizeOverride: _valueFontSize,
          percent: (Random().nextDouble() * percent).toStringAsFixed(decimal),
        ),
        ValueInfoComponent(
          icon: SvgIcon.asset('assets/wallet_4_fill.svg'),
          title: 'Total',
          value: '253',
          isUp: false,
          fontSizeOverride: _valueFontSize,
          percent: (Random().nextDouble() * percent).toStringAsFixed(decimal),
        ),
      ],
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
