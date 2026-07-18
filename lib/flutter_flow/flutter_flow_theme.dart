// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color grey30;
  late Color grey20;
  late Color grey10;
  late Color lightGrey;
  late Color grey40;
  late Color grey;
  late Color redLight;
  late Color greenLight;
  late Color rateColor;
  late Color lightYellow;
  late Color containerColor;
  late Color white;
  late Color textFieldFillColor;
  late Color blackColor;
  late Color borderColor;
  late Color newColor;
  late Color bgBorderColor;
  late Color whiteGreyColor;
  late Color grey30WhiteColor;
  late Color redColor;
  late Color onPrimary;
  late Color onSecondary;
  late Color onSurface;
  late Color onError;
  late Color transparent;
  late Color background70;
  late Color primary20;
  late Color customColor2;

  FFDesignTokens get designToken => FFDesignTokens(this);

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF1A1A1A);
  late Color secondary = const Color(0xFFFFFFFF);
  late Color tertiary = const Color(0xFFCFCFCF);
  late Color alternate = const Color(0xFF000000);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF4A4A4A);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF0891B2);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0xFF8E8E8E);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF2E5A2E);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFF990000);
  late Color info = const Color(0xFFFFFFFF);

  late Color grey30 = const Color(0xFF999999);
  late Color grey20 = const Color(0xFFDCDCDC);
  late Color grey10 = const Color(0xFFE6E6E6);
  late Color lightGrey = const Color(0xFFF7F7F7);
  late Color grey40 = const Color(0xFF666666);
  late Color grey = const Color(0xFFF0F0F0);
  late Color redLight = const Color(0xFFFCEBEB);
  late Color greenLight = const Color(0xFFE6F8EE);
  late Color rateColor = const Color(0xFFF1A80F);
  late Color lightYellow = const Color(0xFFFFFAF0);
  late Color containerColor = const Color(0xFFD9D9D9);
  late Color white = const Color(0xFFFFFFFF);
  late Color textFieldFillColor = const Color(0x14FFFFFF);
  late Color blackColor = const Color(0xFF010A09);
  late Color borderColor = const Color(0xFFDCDCDC);
  late Color newColor = const Color(0xFF989898);
  late Color bgBorderColor = const Color(0xFFDCDCDC);
  late Color whiteGreyColor = const Color(0xFFFFFFFF);
  late Color grey30WhiteColor = const Color(0xFF999999);
  late Color redColor = const Color(0xFFFF0000);
  late Color onPrimary = const Color(0xFFFFFFFF);
  late Color onSecondary = const Color(0xFFFFFFFF);
  late Color onSurface = const Color(0xFF000000);
  late Color onError = const Color(0xFFFFFFFF);
  late Color transparent = const Color(0x00000000);
  late Color background70 = const Color(0xB3FFFFFF);
  late Color primary20 = const Color(0xFFA11414);
  late Color customColor2 = const Color(0xFFB13168);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Archivo Black';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 54.0,
      );
  String get displayMediumFamily => 'Archivo Black';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 50.0,
      );
  String get displaySmallFamily => 'Archivo Black';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 44.0,
      );
  String get headlineLargeFamily => 'Archivo Black';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
        height: 1.1,
      );
  String get headlineMediumFamily => 'Archivo Black';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 28.0,
        height: 1.1,
      );
  String get headlineSmallFamily => 'Archivo Black';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Archivo Black';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
        height: 1.2,
      );
  String get titleMediumFamily => 'Archivo Black';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        height: 1.2,
      );
  String get titleSmallFamily => 'Archivo Black';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Archivo Black';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 10.0,
        height: 1.0,
      );
  String get labelMediumFamily => 'Outfit';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        height: 1.0,
      );
  String get labelSmallFamily => 'Outfit';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        height: 1.0,
      );
  String get bodyLargeFamily => 'Outfit';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        height: 1.5,
      );
  String get bodyMediumFamily => 'Outfit';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        height: 1.4,
      );
  String get bodySmallFamily => 'Outfit';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 10.0,
        height: 1.4,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Archivo Black';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 96.0,
      );
  String get displayMediumFamily => 'Archivo Black';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 80.0,
      );
  String get displaySmallFamily => 'Archivo Black';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 68.0,
      );
  String get headlineLargeFamily => 'Archivo Black';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 52.0,
        height: 1.1,
      );
  String get headlineMediumFamily => 'Archivo Black';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 40.0,
        height: 1.1,
      );
  String get headlineSmallFamily => 'Archivo Black';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 34.0,
      );
  String get titleLargeFamily => 'Archivo Black';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 28.0,
        height: 1.2,
      );
  String get titleMediumFamily => 'Archivo Black';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 26.0,
        height: 1.2,
      );
  String get titleSmallFamily => 'Archivo Black';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 20.0,
      );
  String get labelLargeFamily => 'Archivo Black';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        height: 1.0,
      );
  String get labelMediumFamily => 'Outfit';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 26.0,
        height: 1.0,
      );
  String get labelSmallFamily => 'Outfit';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
        height: 1.0,
      );
  String get bodyLargeFamily => 'Outfit';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        height: 1.5,
      );
  String get bodyMediumFamily => 'Outfit';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        height: 1.4,
      );
  String get bodySmallFamily => 'Outfit';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        height: 1.4,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Archivo Black';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 128.0,
      );
  String get displayMediumFamily => 'Archivo Black';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 100.0,
      );
  String get displaySmallFamily => 'Archivo Black';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 84.0,
      );
  String get headlineLargeFamily => 'Archivo Black';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
        height: 1.1,
      );
  String get headlineMediumFamily => 'Archivo Black';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 48.0,
        height: 1.1,
      );
  String get headlineSmallFamily => 'Archivo Black';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 40.0,
      );
  String get titleLargeFamily => 'Archivo Black';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 34.0,
        height: 1.2,
      );
  String get titleMediumFamily => 'Archivo Black';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
        height: 1.2,
      );
  String get titleSmallFamily => 'Archivo Black';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.archivoBlack(
        color: theme.primaryText,
        fontSize: 24.0,
      );
  String get labelLargeFamily => 'Outfit';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        height: 1.0,
      );
  String get labelMediumFamily => 'Outfit';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
        height: 1.0,
      );
  String get labelSmallFamily => 'Outfit';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
        height: 1.0,
      );
  String get bodyLargeFamily => 'Outfit';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
        height: 1.5,
      );
  String get bodyMediumFamily => 'Outfit';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        height: 1.4,
      );
  String get bodySmallFamily => 'Outfit';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        height: 1.4,
      );
}

class FFDesignTokens {
  const FFDesignTokens(this.theme);
  final FlutterFlowTheme theme;
  FFSpacing get spacing => const FFSpacing();
  FFRadius get radius => const FFRadius();
  FFShadows get shadow => FFShadows(theme);
}

class FFSpacing {
  const FFSpacing();
  double get none => 0.0;
  double get xs => 4.0;
  double get sm => 8.0;
  double get md => 16.0;
  double get lg => 24.0;
  double get xl => 32.0;
  double get xxl => 48.0;
  double get xxxl => 64.0;
}

class FFRadius {
  const FFRadius();
  double get none => 0.0;
  double get xs => 2.0;
  double get sm => 0.0;
  double get md => 0.0;
  double get lg => 0.0;
  double get xl => 24.0;
  double get xxl => 32.0;
  double get full => 0.0;
}

class FFShadows {
  const FFShadows(this.theme);
  final FlutterFlowTheme theme;
  BoxShadow get sm => const BoxShadow(
      blurRadius: 0.0,
      color: const Color(0x00000000),
      offset: const Offset(0.0, 0.0),
      spreadRadius: 0.0);
  BoxShadow get md => const BoxShadow(
      blurRadius: 0.0,
      color: const Color(0x00000000),
      offset: const Offset(0.0, 0.0),
      spreadRadius: 0.0);
  BoxShadow get lg => const BoxShadow(
      blurRadius: 0.0,
      color: const Color(0x00000000),
      offset: const Offset(0.0, 0.0),
      spreadRadius: 0.0);
  BoxShadow get xl => const BoxShadow(
      blurRadius: 0.0,
      color: const Color(0x00000000),
      offset: const Offset(0.0, 0.0),
      spreadRadius: 0.0);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
