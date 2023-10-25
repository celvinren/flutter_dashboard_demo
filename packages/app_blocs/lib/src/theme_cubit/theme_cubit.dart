import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
class ThemeCubit extends Cubit<ThemeState> {
  ///
  ThemeCubit()
      : super(
          ThemeState(
            isDarkMode: SchedulerBinding
                    .instance.platformDispatcher.platformBrightness ==
                Brightness.dark,
          ),
        );

  ///
  void onChangeTheme() {
    emit(ThemeState(isDarkMode: !state.isDarkMode));
  }
}

///
class ThemeState extends Equatable {
  ///
  const ThemeState({required this.isDarkMode});

  ///
  final bool isDarkMode;

  ///
  ThemeState copyWith({required final bool Function() isDarkMode}) =>
      ThemeState(isDarkMode: isDarkMode());

  @override
  List<Object?> get props => [isDarkMode];
}
