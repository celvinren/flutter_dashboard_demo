import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
class ThemeCubit extends Cubit<ThemeState> {
  ///
  ThemeCubit() : super(const ThemeState(isDarkMode: true));

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
