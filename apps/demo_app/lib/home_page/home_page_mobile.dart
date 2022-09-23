import 'dart:math';

import 'package:app_blocs/app_blocs.dart';
import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                padding: const EdgeInsets.all(15),
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
                    const TitleValueListTile(
                      title: 'Year Range',
                      value: '4,834.32 - 4,932.53',
                    ),
                    const TitleValueListTile(
                      title: 'Day Range',
                      value: '2,623.28 - 3,823.74',
                    ),
                    const TitleValueListTile(
                      title: 'Market Cap',
                      value: r'$23.7 T USD',
                    ),
                    const TitleValueListTile(
                      title: 'P/E Ratio',
                      value: '82.73',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 15),
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
            const SizedBox(
              height: 20,
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: ProfileListTile(
                  leadingImage: ImageAssetProvider('assets/user_profile.png'),
                  title: 'Richard',
                  subtitle: '9394lay@gmail.com',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
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
                  ],
                ),
              ),
            ),
          ],
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
