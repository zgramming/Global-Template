import 'package:flutter/material.dart';

class ColorPallete {
  List<Color> arrColor = [
    Color(0xFFfb5607),
    Color(0xFFff006e),
    Color(0xFF8338ec),
    Color(0xFF3a86ff),
    Color(0xFFe07a5f),
    Color(0xFF3d405b),
    Color(0xFF118ab2),
    Color(0xFF3d5a80),
    Color(0xFF50514f),
    Color(0xFFf25f5c),
    Color(0xFF247ba0),
    Color(0xFFf07167),
  ];

  Color _primaryColor = const Color(0xFF3A86FF);
  Color _accentColor = const Color(0xFFFFB33A);

  Color _white = const Color(0xFFFFFFFF),
      _black = const Color(0xFF222831),
      _red = const Color(0xFFd63447),
      _blue = const Color(0xFF1b6ca8),
      _green = const Color(0xFF21bf73),
      _transparent = const Color(0x00000000),
      _weekEnd = const Color(0xFFf0134d),
      _darkGrey = const Color(0xFF121212),
      _darkGrey12 = const Color(0xFF121212).withOpacity(.12),
      _darkGrey26 = const Color(0xFF121212).withOpacity(.26),
      _darkGrey38 = const Color(0xFF121212).withOpacity(.38),
      _darkGrey45 = const Color(0xFF121212).withOpacity(.45),
      _darkGrey54 = const Color(0xFF121212).withOpacity(.54),
      _darkGrey87 = const Color(0xFF121212).withOpacity(.87),
      _darkGreyAccent = const Color(0xFF222831),
      _darkGreyAccent2 = const Color(0xFF525252),
      _darkGreyAccent3 = const Color(0xFF414141),
      _darkGreyAccent4 = const Color(0xFF313131),
      _grey = const Color(0xFF969696),
      _greyTransparent = const Color(0xFF3A86FF),
      _backgroundColor = const Color(0xFFf9f9f9),
      _backgroundColor1 = const Color(0xFFfcfefe),
      _backgroundColor2 = const Color(0xFFF8FCFF),
      _backgroundColor3 = const Color(0xFFf6f6f6),
      _backgroundColor4 = const Color(0xFFfbfbfb),
      _backgroundColor5 = const Color(0xFFf2f2f2),
      _backgroundDarkColor = const Color(0xFF003545),
      _accentDarkColor = const Color(0xFFf638dc),
      _onboardingColor1 = const Color(0xFF82B832),
      _onboardingColor2 = const Color(0xFFB83282),
      _onboardingColor3 = const Color(0xFF3282B8);

  ///Primary Color
  Color get primaryColor => _primaryColor;

  ///Accent Color
  Color get accentColor => _accentColor;

  Color get white => _white;
  Color get black => _black;
  Color get red => _red;
  Color get blue => _blue;
  Color get green => _green;
  Color get transparent => _transparent;
  Color get weekEnd => _weekEnd;
  Color get darkGrey => _darkGrey;
  Color get darkGrey12 => _darkGrey12;
  Color get darkGrey26 => _darkGrey26;
  Color get darkGrey38 => _darkGrey38;
  Color get darkGrey45 => _darkGrey45;
  Color get darkGrey54 => _darkGrey54;
  Color get darkGrey87 => _darkGrey87;
  Color get darkGreyAccent => _darkGreyAccent;
  Color get darkGreyAccent2 => _darkGreyAccent2;
  Color get darkGreyAccent3 => _darkGreyAccent3;
  Color get darkGreyAccent4 => _darkGreyAccent4;
  Color get grey => _grey;
  Color get greyTransparent => _greyTransparent;
  Color get backgroundColor => _backgroundColor;
  Color get backgroundColor1 => _backgroundColor1;
  Color get backgroundColor2 => _backgroundColor2;
  Color get backgroundColor3 => _backgroundColor3;
  Color get backgroundColor4 => _backgroundColor4;
  Color get backgroundColor5 => _backgroundColor5;
  Color get backgroundDarkColor => _backgroundDarkColor;
  Color get accentDarkColor => _accentDarkColor;
  Color get onboardingColor1 => _onboardingColor1;
  Color get onboardingColor2 => _onboardingColor2;
  Color get onboardingColor3 => _onboardingColor3;

  void configuration({
    Color primaryColor,
    Color accentColor,
    Color white,
    Color black,
    Color red,
    Color blue,
    Color green,
    Color transparent,
    Color weekEnd,
    Color darkGrey,
    Color darkGrey12,
    Color darkGrey26,
    Color darkGrey38,
    Color darkGrey45,
    Color darkGrey54,
    Color darkGrey87,
    Color darkGreyAccent,
    Color darkGreyAccent2,
    Color darkGreyAccent3,
    Color darkGreyAccent4,
    Color grey,
    Color greyTransparent,
    Color backgroundColor,
    Color backgroundColor1,
    Color backgroundColor2,
    Color backgroundColor3,
    Color backgroundColor4,
    Color backgroundColor5,
    Color backgroundDarkColor,
    Color accentDarkColor,
    Color onboardingColor1,
    Color onboardingColor2,
    Color onboardingColor3,
  }) {
    _primaryColor = primaryColor;
    _accentColor = accentColor;
    _white = white;
    _black = black;
    _red = red;
    _blue = blue;
    _green = green;
    _transparent = transparent;
    _weekEnd = weekEnd;
    _darkGrey = darkGrey;
    _darkGrey12 = darkGrey12;
    _darkGrey26 = darkGrey26;
    _darkGrey38 = darkGrey38;
    _darkGrey45 = darkGrey45;
    _darkGrey54 = darkGrey54;
    _darkGrey87 = darkGrey87;
    _darkGreyAccent = darkGreyAccent;
    _darkGreyAccent2 = darkGreyAccent2;
    _darkGreyAccent3 = darkGreyAccent3;
    _darkGreyAccent4 = darkGreyAccent4;
    _grey = grey;
    _greyTransparent = greyTransparent;
    _backgroundColor = backgroundColor;
    _backgroundColor1 = backgroundColor1;
    _backgroundColor2 = backgroundColor2;
    _backgroundColor3 = backgroundColor3;
    _backgroundColor4 = backgroundColor4;
    _backgroundColor5 = backgroundColor5;
    _backgroundDarkColor = backgroundDarkColor;
    _accentDarkColor = accentDarkColor;
    _onboardingColor1 = onboardingColor1;
    _onboardingColor2 = onboardingColor2;
    _onboardingColor3 = onboardingColor3;
  }
}
