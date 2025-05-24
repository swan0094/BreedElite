import 'package:app_ui/src/colors.dart';
import 'package:app_ui/src/typography/typography.dart';
import 'package:flutter/widgets.dart';

/// BreedElite Text Style Definitions
class BreedEliteTextStyle {
  static const _baseTextStyle = TextStyle(
    package: 'app_ui',
    fontFamily: 'DMSans',
    color: BreedEliteColors.black,
    fontWeight: BreedEliteFontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 40,
      fontWeight: BreedEliteFontWeight.medium,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 30,
      fontWeight: BreedEliteFontWeight.regular,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: BreedEliteFontWeight.regular,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BreedEliteFontWeight.bold,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: BreedEliteFontWeight.medium,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BreedEliteFontWeight.bold,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: BreedEliteFontWeight.bold,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: BreedEliteFontWeight.bold,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: BreedEliteFontWeight.medium,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: BreedEliteFontWeight.regular,
    );
  }

  /// Boddy Test 3 Text Style
  static TextStyle get bodyText3 {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: BreedEliteFontWeight.regular,
    );
  }

  /// Label Text Style
  static TextStyle get label {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: BreedEliteFontWeight.regular,
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: BreedEliteFontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: BreedEliteFontWeight.medium,
    );
  }

  /// Subtitle 1 Text Style - Prominent
  static TextStyle get titleMediumProminent {
    return _baseTextStyle.copyWith(
      fontSize: 24,
      height: 1.5,
      letterSpacing: .15,
      fontWeight: BreedEliteFontWeight.semiBold,
    );
  }

  /// Subtitle 1 Text Style - Prominent
  static TextStyle get titleLargeProminent {
    return _baseTextStyle.copyWith(
      fontSize: 32,
      height: 1.27,
      letterSpacing: -3,
      fontWeight: BreedEliteFontWeight.black,
    );
  }

  /// labelLargeProminent Style
  static TextStyle get labelLargeProminent {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      height: 1.42,
      letterSpacing: .1,
      fontWeight: BreedEliteFontWeight.semiBold,
    );
  }

  /// labelMediumProminent Text Style
  static TextStyle get labelMediumProminent {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      height: 1.33,
      letterSpacing: .5,
      fontWeight: BreedEliteFontWeight.semiBold,
    );
  }
}
