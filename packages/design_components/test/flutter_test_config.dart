import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(final FutureOr<void> Function() testMain) async {
  await loadAppFonts();

  // ignore: do_not_use_environment
  const isRunningInCi = bool.fromEnvironment('CI');

  return AlchemistConfig.runWithConfig(
    config: const AlchemistConfig(
      platformGoldensConfig: PlatformGoldensConfig(
        // ignore: avoid_redundant_argument_values
        enabled: !isRunningInCi,
      ),
    ),
    run: testMain,
  );
}
