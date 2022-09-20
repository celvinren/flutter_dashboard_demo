import 'package:app_blocs/app_blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

void main() {
  runApp(
    BlocProvider(
      create: (final context) => ThemeCubit(),
      child: const App(),
    ),
  );
}
