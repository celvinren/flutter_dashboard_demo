import 'dart:math';

import 'package:app_blocs/app_blocs.dart';
import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bar_chart/bar_chart_card.dart';
import '../line_chart/line_chart_card.dart';
import '../pie_chart/pie_chart_card.dart';

///
class HomePageDesktop extends StatelessWidget {
  ///
  const HomePageDesktop({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final onSurface = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade300
        : theme.colorScheme.onSurface;
    const percent = 100;
    const decimal = 2;

    final topCard = Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ValueInfoComponent(
              icon: SvgIcon.asset('assets/user_4_fill.svg'),
              title: 'User',
              value: '2,765',
              isUp: true,
              percent:
                  (Random().nextDouble() * percent).toStringAsFixed(decimal),
            ),
            ValueInfoComponent(
              icon: SvgIcon.asset(
                'assets/chart_pie_fill.svg',
              ),
              title: 'New',
              value: '253',
              isUp: false,
              percent:
                  (Random().nextDouble() * percent).toStringAsFixed(decimal),
            ),
            ValueInfoComponent(
              icon: SvgIcon.asset('assets/tag_fill.svg'),
              title: 'Average',
              value: '896',
              isUp: true,
              percent:
                  (Random().nextDouble() * percent).toStringAsFixed(decimal),
            ),
            ValueInfoComponent(
              icon: SvgIcon.asset('assets/wallet_4_fill.svg'),
              title: 'Total',
              value: '253',
              isUp: false,
              percent:
                  (Random().nextDouble() * percent).toStringAsFixed(decimal),
            ),
          ],
        ),
      ),
    );
    const barChart = Card(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: BarChartSample2(),
      ),
    );

    final listView = Card(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: const [
                CardTitle(title: 'Details'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleValueListTile(
              title: 'Previous Close',
              value: '4,324.32',
            ),
            const SizedBox(
              height: 10,
            ),
            const TitleValueListTile(
              title: 'Year Range',
              value: '4,834.32 - 4,932.53',
            ),
            const SizedBox(
              height: 10,
            ),
            const TitleValueListTile(
              title: 'Day Range',
              value: '2,623.28 - 3,823.74',
            ),
            const SizedBox(
              height: 10,
            ),
            const TitleValueListTile(
              title: 'Market Cap',
              value: r'$23.7 T USD',
            ),
            const SizedBox(
              height: 10,
            ),
            const TitleValueListTile(
              title: 'P/E Ratio',
              value: '82.73',
            ),
          ],
        ),
      ),
    );

    const lineChart = Card(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: LineChartSample1(),
      ),
    );
    const pieChart = Card(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: PieChartSample2(),
      ),
    );

    return Scaffold(
      body: LayoutBuilder(
        builder: (final context, final constraintMain) => SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 280,
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
                          leadingImage:
                              ImageAssetProvider('assets/user_profile.png'),
                          title: 'Richard',
                          subtitle: '9394lay@gmail.com',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (constraintMain.maxWidth < 1100)
                        SizedBox(
                          height: 111,
                          child: topCard,
                        )
                      else if (constraintMain.maxWidth < 1600)
                        AspectRatio(
                          aspectRatio: 28 / 4,
                          child: topCard,
                        )
                      else
                        SizedBox(
                          height: 167,
                          child: topCard,
                        ),
                      LayoutBuilder(
                        builder: (final context, final constraintSecondRow) =>
                            Row(
                          children: [
                            if (constraintMain.maxWidth < 1325)
                              SizedBox(
                                height: 333,
                                width: constraintSecondRow.maxWidth - 333,
                                child: barChart,
                              )
                            else if (constraintMain.maxWidth <= 1700)
                              Expanded(
                                flex: 2, //constraints.maxWidth > 1700 ? 3 : 2,
                                child: LayoutBuilder(
                                  builder: (final context, final constraints) =>
                                      SizedBox(
                                    height: constraints.maxWidth / 2,
                                    child: barChart,
                                  ),
                                ),
                              )
                            else
                              SizedBox(
                                height: 450,
                                width: constraintSecondRow.maxWidth - 450,
                                child: barChart,
                              ),
                            if (constraintMain.maxWidth < 1325)
                              SizedBox(
                                height: 333,
                                width: 333,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: listView,
                                ),
                              )
                            else if (constraintMain.maxWidth <= 1700)
                              Expanded(
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: listView,
                                ),
                              )
                            else
                              SizedBox(
                                height: 450,
                                width: 450,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: listView,
                                ),
                              ),
                          ],
                        ),
                      ),
                      LayoutBuilder(
                        builder: (final context, final constraintThirdRow) =>
                            Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (constraintMain.maxWidth < 1325)
                              SizedBox(
                                height: 333,
                                width: constraintThirdRow.maxWidth - 333,
                                child: lineChart,
                              )
                            else if (constraintMain.maxWidth <= 1700)
                              Expanded(
                                flex: 2,
                                child: LayoutBuilder(
                                  builder: (final context, final constraints) =>
                                      SizedBox(
                                    height: constraints.maxWidth / 2,
                                    child: lineChart,
                                  ),
                                ),
                              )
                            else
                              SizedBox(
                                height: 450,
                                width: constraintThirdRow.maxWidth - 450,
                                child: lineChart,
                              ),
                            if (constraintMain.maxWidth < 1325)
                              const SizedBox(
                                height: 333,
                                width: 333,
                                child: pieChart,
                              )
                            else if (constraintMain.maxWidth <= 1700)
                              const Expanded(
                                child: pieChart,
                              )
                            else if (constraintMain.maxWidth > 1700)
                              const SizedBox(
                                height: 450,
                                width: 450,
                                child: pieChart,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().onChangeTheme(),
        tooltip: 'Change Theme',
        child: const Icon(Icons.brightness_4),
      ),
    );
  }
}
