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

///
class HomePageMobile extends StatelessWidget {
  ///
  const HomePageMobile({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final onSurface = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade300
        : theme.colorScheme.onSurface;
    const percent = 100;
    const decimal = 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Demo',
        ),
      ),
      drawer: const LeftMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: LayoutBuilder(
            builder: (final context, final constraint) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(15),
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
                        TitleValueListTile(
                          title: 'Year Range',
                          value: '4,834.32 - 4,932.53',
                        ),
                        TitleValueListTile(
                          title: 'Day Range',
                          value: '2,623.28 - 3,823.74',
                        ),
                        TitleValueListTile(
                          title: 'Market Cap',
                          value: r'$23.7 T USD',
                        ),
                        TitleValueListTile(
                          title: 'P/E Ratio',
                          value: '82.73',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: constraint.maxWidth,
                  child: Card(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
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
                              percent: (Random().nextDouble() * percent)
                                  .toStringAsFixed(decimal),
                            ),
                            ValueInfoComponent(
                              icon: SvgIcon.asset('assets/chart_pie_fill.svg'),
                              title: 'New',
                              value: '253',
                              isUp: false,
                              percent: (Random().nextDouble() * percent)
                                  .toStringAsFixed(decimal),
                            ),
                            ValueInfoComponent(
                              icon: SvgIcon.asset('assets/tag_fill.svg'),
                              title: 'Average',
                              value: '896',
                              isUp: true,
                              percent: (Random().nextDouble() * percent)
                                  .toStringAsFixed(decimal),
                            ),
                            ValueInfoComponent(
                              icon: SvgIcon.asset('assets/wallet_4_fill.svg'),
                              title: 'Total',
                              value: '253',
                              isUp: false,
                              percent: (Random().nextDouble() * percent)
                                  .toStringAsFixed(decimal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().onChangeTheme(),
        tooltip: 'Change Theme',
        child: const Icon(Icons.brightness_4),
      ),
    );
  }
}
