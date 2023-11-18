import 'package:data_models/data_models.dart';
import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data_repository/data_repository.dart';
import '../data_repository/data_repository_state.dart';
import 'widgets/bar_chart_card.dart';
import 'widgets/data_list_card.dart';
import 'widgets/floating_button.dart';
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

///
const bodyPaddingVertical = 30.0;

///
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
        floatingActionButton: FloatingButton(),
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

  @override
  Widget build(final BuildContext context) => Card(
        child: SizedBox(
          height: _topCardHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocSelector<DataRepository, DataRepositoryState,
                  TopCardDataModel>(
                selector: (final state) => state.value1,
                builder: (final context, final state) => ValueInfoComponent(
                  icon: SvgIcon.asset('assets/user_4_fill.svg'),
                  title: 'User',
                  value: state.value,
                  isUp: state.value >= state.previousValue,
                  previousValue: state.previousValue,
                ),
              ),
              BlocSelector<DataRepository, DataRepositoryState,
                  TopCardDataModel>(
                selector: (final state) => state.value2,
                builder: (final context, final state) => ValueInfoComponent(
                  icon: SvgIcon.asset(
                    'assets/chart_pie_fill.svg',
                  ),
                  title: 'New',
                  value: state.value,
                  isUp: state.value >= state.previousValue,
                  previousValue: state.previousValue,
                ),
              ),
              BlocSelector<DataRepository, DataRepositoryState,
                  TopCardDataModel>(
                selector: (final state) => state.value3,
                builder: (final context, final state) => ValueInfoComponent(
                  icon: SvgIcon.asset('assets/tag_fill.svg'),
                  title: 'Average',
                  value: state.value,
                  isUp: state.value >= state.previousValue,
                  previousValue: state.previousValue,
                ),
              ),
              BlocSelector<DataRepository, DataRepositoryState,
                  TopCardDataModel>(
                selector: (final state) => state.value4,
                builder: (final context, final state) => ValueInfoComponent(
                  icon: SvgIcon.asset('assets/wallet_4_fill.svg'),
                  title: 'Total',
                  value: state.value,
                  isUp: state.value >= state.previousValue,
                  previousValue: state.previousValue,
                ),
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
              child: Row(
                children: [
                  const Expanded(flex: 2, child: BarChartCard()),
                  SizedBox(
                    width: 333,
                    height: (MediaQuery.sizeOf(context).height -
                            _topCardHeight -
                            bodyPaddingVertical * 2) /
                        2,
                    child: const DataListCard(),
                  ),
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
              child: DataListCard(),
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
