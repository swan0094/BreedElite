// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get navigationRailMobsTitle => 'Mobs';

  @override
  String get navigationRailMenutTitle => 'Menu';

  @override
  String get navigationRailPaddocksTitle => 'Paddocks';

  @override
  String get navigationRailMapTitle => 'Map';
}

/// The translations for English, as used in Australia (`en_AU`).
class AppLocalizationsEnAu extends AppLocalizationsEn {
  AppLocalizationsEnAu() : super('en_AU');

  @override
  String get navigationRailMobsTitle => 'Mobs';

  @override
  String get navigationRailMenutTitle => 'Menu';

  @override
  String get navigationRailPaddocksTitle => 'Paddocks';

  @override
  String get navigationRailMapTitle => 'Map';
}
