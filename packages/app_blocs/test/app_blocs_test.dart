import 'package:app_blocs/app_blocs.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  blocTest<ThemeCubit, ThemeState>(
    'Initial state is ThemeState(isDarkMode: false), '
    'emits ThemeState(isDarkMode: true) when onChangeTheme is called',
    build: ThemeCubit.new,
    act: (final bloc) => bloc.onChangeTheme(),
    expect: () => <ThemeState>[const ThemeState(isDarkMode: true)],
  );
}
