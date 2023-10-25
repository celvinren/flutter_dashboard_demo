import 'package:design_components/design_components.dart';
import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu();

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
