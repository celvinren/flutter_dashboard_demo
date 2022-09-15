import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// AppLocalizations is a class that provides localizations
/// for all of the terms in the app.
// ignore: avoid-dynamic
AppLocalizations useLocalization(final BuildContext context) {
  final appLocalization = AppLocalizations.of(context);
  if (appLocalization == null) {
    throw Exception('AppLocalizations not initialized');
  }

  return appLocalization;
}
