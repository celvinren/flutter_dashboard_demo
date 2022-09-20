import 'dart:math';

import 'package:app_blocs/app_blocs.dart';
import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This widget is the home page of your application.
class HomePage extends StatelessWidget {
  /// This widget is the home page of your application.
  const HomePage({
    required this.title,
    super.key,
  });

  /// The title of the page.
  final String title;

  @override
  Widget build(final BuildContext context) {
    const percent = 100;
    const decimal = 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_4),
            onPressed: () => context.read<ThemeCubit>().onChangeTheme(),
          ),
        ],
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
          ],
        ),
      ),
    );
  }
}
