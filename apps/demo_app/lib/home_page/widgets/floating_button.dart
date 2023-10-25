import 'package:app_blocs/app_blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
class FloatingButton extends StatelessWidget {
  ///
  const FloatingButton();

  @override
  Widget build(final BuildContext context) => FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().onChangeTheme(),
        tooltip: 'Change Theme',
        child: const Icon(Icons.brightness_4),
      );
}
