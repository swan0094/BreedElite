import 'package:app_ui/app_ui.dart';
import 'package:app_ui/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Namespace for the BreedElite [ThemeData].
class BreedEliteTheme {
  /// Standard Light `ThemeData` for BreedElite UI.
  static ThemeData get standardLight {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff69548d),
      surfaceTint: Color(0xff69548d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffecdcff),
      onPrimaryContainer: Color(0xff240e45),
      secondary: Color(0xff68548d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffebdcff),
      onSecondaryContainer: Color(0xff230f46),
      tertiary: Color(0xff7e570f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb0),
      onTertiaryContainer: Color(0xff281800),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff8f7f6),
      onSurface: Color(0xff161d1c),
      onSurfaceVariant: Color(0xff4d4639),
      outline: Color(0xff7e7667),
      outlineVariant: Color(0xffcfc5b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3231),
      inversePrimary: Color(0xffd4bbfc),
      primaryFixed: Color(0xffecdcff),
      onPrimaryFixed: Color(0xff240e45),
      primaryFixedDim: Color(0xffd4bbfc),
      onPrimaryFixedVariant: Color(0xff513c74),
      secondaryFixed: Color(0xffebdcff),
      onSecondaryFixed: Color(0xff230f46),
      secondaryFixedDim: Color(0xffd3bbfd),
      onSecondaryFixedVariant: Color(0xff503c74),
      tertiaryFixed: Color(0xffffddb0),
      onTertiaryFixed: Color(0xff281800),
      tertiaryFixedDim: Color(0xfff2bd6e),
      onTertiaryFixedVariant: Color(0xff614000),
      surfaceDim: Color(0xffd5dbda),
      surfaceBright: Color(0xfff4fbf9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f3),
      surfaceContainer: Color(0xffe9efee),
      surfaceContainerHigh: Color(0xffe3e9e8),
      surfaceContainerHighest: Color(0xffdde4e2),
    );

    return ThemeData(
      useMaterial3: true,
      extensions: {
        _lightCustomColors,
        _customTextStyles,
      },
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      appBarTheme: _appBarTheme(colorScheme),
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      //dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      //tabBarTheme: _tabBarTheme(colorScheme),
      dividerTheme: _dividerTheme,
      navigationBarTheme: _navigationBarTheme(colorScheme),
      navigationRailTheme: _navigationRailTheme(colorScheme),
      bottomNavigationBarTheme: _bottomNavigationBarTheme(colorScheme),
      floatingActionButtonTheme: _floatingActionButtonTheme(colorScheme),
      //cardTheme: _cardTheme,
      inputDecorationTheme: _inputDecorationTheme(colorScheme, _textTheme),
    );
  }

  /// Standard Dark `ThemeData` for BreedElite UI.
  static ThemeData get standardDark {
    const colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd8c0ff),
      surfaceTint: Color(0xffd4bbfc),
      onPrimary: Color(0xff1e0840),
      primaryContainer: Color(0xff9d86c3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd7c0ff),
      onSecondary: Color(0xff1e0840),
      secondaryContainer: Color(0xff9c86c3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff7c272),
      onTertiary: Color(0xff221300),
      tertiaryContainer: Color(0xffb7883e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1514),
      onSurface: Color(0xfff6fcfb),
      onSurfaceVariant: Color(0xffd4cab8),
      outline: Color(0xffaba291),
      outlineVariant: Color(0xff8b8273),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e2),
      inversePrimary: Color(0xff523d75),
      primaryFixed: Color(0xffecdcff),
      onPrimaryFixed: Color(0xff19023b),
      primaryFixedDim: Color(0xffd4bbfc),
      onPrimaryFixedVariant: Color(0xff3f2b62),
      secondaryFixed: Color(0xffebdcff),
      onSecondaryFixed: Color(0xff18023b),
      secondaryFixedDim: Color(0xffd3bbfd),
      onSecondaryFixedVariant: Color(0xff3f2c62),
      tertiaryFixed: Color(0xffffddb0),
      onTertiaryFixed: Color(0xff1b0f00),
      tertiaryFixedDim: Color(0xfff2bd6e),
      onTertiaryFixedVariant: Color(0xff4b3100),
      surfaceDim: Color(0xff0e1514),
      surfaceBright: Color(0xff343a3a),
      surfaceContainerLowest: Color(0xff090f0f),
      surfaceContainerLow: Color(0xff161d1c),
      surfaceContainer: Color(0xff1a2120),
      surfaceContainerHigh: Color(0xff252b2b),
      surfaceContainerHighest: Color(0xff2f3635),
    );

    return ThemeData(
      useMaterial3: true,
      extensions: {
        _darkCustomColors,
        _customTextStyles,
      },
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      appBarTheme: _appBarTheme(colorScheme),
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      //dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      //tabBarTheme: _tabBarTheme(colorScheme),
      dividerTheme: _dividerTheme,
      navigationBarTheme: _navigationBarTheme(colorScheme),
      navigationRailTheme: _navigationRailTheme(colorScheme),
      bottomNavigationBarTheme: _bottomNavigationBarTheme(colorScheme),
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: BreedEliteTextStyle.headline1,
      displayMedium: BreedEliteTextStyle.headline2,
      displaySmall: BreedEliteTextStyle.headline3,
      headlineMedium: BreedEliteTextStyle.headline4,
      headlineSmall: BreedEliteTextStyle.headline5,
      titleLarge: BreedEliteTextStyle.headline6,
      titleMedium: BreedEliteTextStyle.subtitle1,
      titleSmall: BreedEliteTextStyle.subtitle2,
      bodyLarge: BreedEliteTextStyle.bodyText1,
      bodyMedium: BreedEliteTextStyle.bodyText2,
      bodySmall: BreedEliteTextStyle.bodyText3,
      labelSmall: BreedEliteTextStyle.label,
      labelMedium: BreedEliteTextStyle.overline,
      labelLarge: BreedEliteTextStyle.button,
    );
  }

  static NavigationBarThemeData _navigationBarTheme(ColorScheme colorScheme) {
    return NavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      elevation: 0,
      indicatorColor: colorScheme.secondaryContainer,
      height: 68,
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return _textTheme.bodySmall!.copyWith(
              fontWeight: BreedEliteFontWeight.semiBold,
              color: colorScheme.onSurface,
            );
          } else {
            return _textTheme.bodySmall!.copyWith(
              fontWeight: BreedEliteFontWeight.semiBold,
              color: colorScheme.onSurfaceVariant,
            );
          }
        },
      ),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(
              color: colorScheme.onSecondaryContainer,
            );
          } else {
            return IconThemeData(
              color: colorScheme.onSurfaceVariant,
            );
          }
        },
      ),
    );
  }

  static NavigationRailThemeData _navigationRailTheme(ColorScheme colorScheme) {
    return NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      backgroundColor: const Color(0XFFF9FBFB),
      elevation: 0,
      indicatorColor: colorScheme.secondaryContainer,
      selectedLabelTextStyle: _textTheme.labelMedium?.copyWith(
        fontWeight: BreedEliteFontWeight.semiBold,
        color: colorScheme.onSurface,
      ),
      unselectedLabelTextStyle: _textTheme.labelMedium?.copyWith(
        fontWeight: BreedEliteFontWeight.semiBold,
        color: colorScheme.onSurfaceVariant,
      ),
      selectedIconTheme: IconThemeData(
        color: colorScheme.onSecondaryContainer,
      ),
      unselectedIconTheme: IconThemeData(
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }

  static BottomNavigationBarThemeData _bottomNavigationBarTheme(
    ColorScheme colorScheme,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: colorScheme.surfaceContainer,
    );
  }

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      color: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: colorScheme.onSecondaryContainer,
      ),
      titleTextStyle: _textTheme.titleMedium?.copyWith(
        color: colorScheme.onSurface,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: BreedEliteColors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: BreedEliteColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: BreedEliteColors.white, width: 2),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: BreedEliteColors.charcoal,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: BreedEliteColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: BreedEliteColors.whiteBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme _tabBarTheme(ColorScheme colorScheme) {
    return TabBarTheme(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.onSurfaceVariant,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: _textTheme.titleSmall,
      unselectedLabelStyle: _textTheme.titleSmall,
    );
  }

  static DividerThemeData get _dividerTheme {
    return DividerThemeData(
      space: 0,
      thickness: 1,
      color: _lightCustomColors.divider,
    );
  }

  static FloatingActionButtonThemeData _floatingActionButtonTheme(
    ColorScheme scheme,
  ) {
    return FloatingActionButtonThemeData(
      backgroundColor: scheme.primary,
      extendedTextStyle: _textTheme.labelLarge?.copyWith(
        color: scheme.onPrimary,
        height: 1.43,
        letterSpacing: .1,
      ),
      elevation: 0,
    );
  }

  static CardTheme get _cardTheme {
    return CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return InputDecorationTheme(
      fillColor: _lightCustomColors.surfaceContainer,
      filled: true,
      labelStyle: WidgetStateTextStyle.resolveWith(
        (states) {
          var color = const Color(0XFF404943);
          if (states.contains(WidgetState.disabled)) {
            color = const Color(0XFF191C1A).withValues(alpha: 0.38);
          }
          return textTheme.bodyMedium!.copyWith(
            height: 1.3,
            color: color,
          );
        },
      ),
      floatingLabelStyle: textTheme.bodyMedium?.copyWith(
        letterSpacing: 0.8,
      ),
      hintStyle: textTheme.bodyMedium?.copyWith(
        height: 1.5,
        color: ColorName.disabled,
      ),
      errorStyle: textTheme.bodySmall?.copyWith(
        color: ColorName.error,
      ),
      helperStyle: textTheme.bodyMedium,
      errorMaxLines: 5,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorName.disabled),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary),
        borderRadius: BorderRadius.circular(4),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorName.disabled),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorName.error),
        borderRadius: BorderRadius.circular(4),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorName.error),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

/// An extension on the BuildContext
extension BuildContextX<T> on BuildContext {
  /// Width of the MediaQuery
  double get width => MediaQuery.of(this).size.width;

  /// Height of the MediaQuery
  double get height => MediaQuery.of(this).size.height;

  /// Size of the MediaQuery
  Size get size => MediaQuery.of(this).size;

  /// Theme of the Context
  ThemeData get theme => Theme.of(this);

  /// Flag for small screen sizes
  bool get isScreenSmall =>
      MediaQuery.of(this).size.width <= BreedEliteBreakpoints.small;

  /// Flag for medium screen sizes
  bool get isScreenMedium =>
      MediaQuery.of(this).size.width > BreedEliteBreakpoints.small &&
      MediaQuery.of(this).size.width <= BreedEliteBreakpoints.medium;

  /// Flag for large screen sizes
  bool get isScreenLarge =>
      MediaQuery.of(this).size.width > BreedEliteBreakpoints.medium;

  /// DisplayMedium
  TextStyle? get displayLarge => theme.textTheme.displayLarge;

  /// DisplayMedium
  TextStyle? get displayMedium => theme.textTheme.displayMedium;

  /// DisplaySmall
  TextStyle? get displaySmall => theme.textTheme.displaySmall;

  /// headlineLarge
  TextStyle? get headlineLarge => theme.textTheme.headlineLarge;

  /// headlineMedium
  TextStyle? get headlineMedium => theme.textTheme.headlineMedium;

  /// headlineSmall
  TextStyle? get headlineSmall => theme.textTheme.headlineSmall;

  /// titleLarge
  TextStyle? get titleLarge => theme.textTheme.titleLarge;

  /// titleMedium
  TextStyle? get titleMedium => theme.textTheme.titleMedium;

  /// titleSmall
  TextStyle? get titleSmall => theme.textTheme.titleSmall;

  /// labelLarge
  TextStyle? get labelLarge => theme.textTheme.labelLarge;

  /// labelMedium
  TextStyle? get labelMedium => theme.textTheme.labelMedium;

  /// labelSmall
  TextStyle? get labelSmall => theme.textTheme.labelSmall;

  /// bodySmall
  TextStyle? get bodySmall => theme.textTheme.bodySmall;

  /// titleTextStyle
  TextStyle? get titleTextStyle => theme.appBarTheme.titleTextStyle;

  /// bodyLarge
  TextStyle? get bodyLarge => theme.textTheme.bodyLarge;

  /// bodyMedium
  TextStyle? get bodyMedium => theme.textTheme.bodyMedium;

  /// primary
  Color get primary => theme.colorScheme.primary;

  /// onPrimary
  Color get onPrimary => theme.colorScheme.onPrimary;

  /// secondary
  Color get secondary => theme.colorScheme.secondary;

  /// onSecondary
  Color get onSecondary => theme.colorScheme.onSecondary;

  /// errorColor
  Color get errorColor => theme.colorScheme.error;

  /// background
  Color get background => theme.colorScheme.surface;

  /// inversePrimary
  Color get inversePrimary => theme.colorScheme.inversePrimary;

  /// Flag for is dark mode
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// showBottomSheet
  Future<T?> showBottomSheet(
    Widget child, {
    bool isScrollControlled = true,
    Color? backgroundColor,
    Color? barrierColor,
    bool useRootNavigator = false,
  }) {
    return showModalBottomSheet<T>(
      context: this,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      backgroundColor: backgroundColor,
      constraints: const BoxConstraints(),
      showDragHandle: true,
      useSafeArea: true,
      enableDrag: false,
      builder: (context) => Wrap(children: [child]),
    );
  }

  /// showSnackBar
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    String? message, {
    VoidCallback? onPressed,
    String? buttonLabel,
    EdgeInsetsGeometry? margin,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        margin: margin ??
            (isScreenMedium || isScreenLarge
                ? EdgeInsets.only(
                    bottom: 45,
                    left: width * .3,
                    right: width * .3,
                  )
                : const EdgeInsets.only(bottom: 104, left: 24, right: 24)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(message ?? ''),
            ),
            if (buttonLabel != null && onPressed != null)
              TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                child:
                    Text(buttonLabel, style: TextStyle(color: inversePrimary)),
              ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

CustomColors _lightCustomColors = const CustomColors(
  divider: Color(0XFFE1E3DF),
  surfaceContainer: Color(0XFFEBEFEA),
  cardShadow: Color(0x64000000),
);

CustomColors _darkCustomColors = const CustomColors(
  divider: Color(0XFFE1E3DF),
  surfaceContainer: Color(0XFFECEEEA),
  cardShadow: Color(0X1A000000),
);

///{@template custom_colors}
/// Defines a set of custom colors
///{@endtemplate}
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  ///{@macro custom_colors}
  const CustomColors({
    required this.divider,
    required this.surfaceContainer,
    required this.cardShadow,
  });

  /// Custom Divider color
  final Color? divider;

  /// Custom color for surfaceContainer
  final Color? surfaceContainer;

  /// Custom color for cardShadow
  final Color? cardShadow;

  @override
  CustomColors copyWith({
    Color? divider,
    Color? surfaceContainer,
    Color? cardShadow,
  }) {
    return CustomColors(
      divider: divider ?? this.divider,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      cardShadow: cardShadow ?? this.cardShadow,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      divider: Color.lerp(divider, other.divider, t),
      surfaceContainer: Color.lerp(
        surfaceContainer,
        other.surfaceContainer,
        t,
      ),
      cardShadow: Color.lerp(cardShadow, other.cardShadow, t),
    );
  }
}

CustomTextStyles _customTextStyles = CustomTextStyles(
  labelMediumProminent: BreedEliteTextStyle.labelMediumProminent,
  labelLargeProminent: BreedEliteTextStyle.labelLargeProminent,
  titleMediumProminent: BreedEliteTextStyle.titleMediumProminent,
  titleLargeProminent: BreedEliteTextStyle.titleLargeProminent,
);

///{@template custom_text_styles}
/// Defines a set of custom text styles
///{@endtemplate}

@immutable
class CustomTextStyles extends ThemeExtension<CustomTextStyles> {
  ///{@macro custom_text_styles}

  const CustomTextStyles({
    this.labelMediumProminent,
    this.labelLargeProminent,
    this.titleMediumProminent,
    this.titleLargeProminent,
  });

  /// fontSize: 12,
  /// height: 1.33,
  /// letterSpacing: .5,

  final TextStyle? labelMediumProminent;

  /// fontSize: 14,
  /// height: 1.42,
  /// letterSpacing: .1,
  final TextStyle? labelLargeProminent;

  /// fontSize: 24,
  /// height: 1.5,
  /// letterSpacing: .15,
  final TextStyle? titleMediumProminent;

  /// fontSize: 40,
  /// height: 1.27,
  /// letterSpacing: .15,
  final TextStyle? titleLargeProminent;

  @override
  CustomTextStyles copyWith({
    TextStyle? labelMediumProminent,
    TextStyle? labelLargeProminent,
    TextStyle? titleMediumProminent,
    TextStyle? titleLargeProminent,
  }) {
    return CustomTextStyles(
      labelMediumProminent: labelMediumProminent ?? this.labelMediumProminent,
      labelLargeProminent: labelLargeProminent ?? this.labelLargeProminent,
      titleMediumProminent: titleMediumProminent ?? this.titleMediumProminent,
      titleLargeProminent: titleLargeProminent ?? this.titleLargeProminent,
    );
  }

  @override
  CustomTextStyles lerp(ThemeExtension<CustomTextStyles>? other, double t) {
    if (other is! CustomTextStyles) {
      return this;
    }

    return CustomTextStyles(
      labelMediumProminent:
          TextStyle.lerp(labelMediumProminent, other.labelMediumProminent, t),
      labelLargeProminent:
          TextStyle.lerp(labelLargeProminent, other.labelLargeProminent, t),
      titleMediumProminent:
          TextStyle.lerp(titleMediumProminent, other.titleMediumProminent, t),
      titleLargeProminent:
          TextStyle.lerp(titleLargeProminent, other.titleLargeProminent, t),
    );
  }
}
