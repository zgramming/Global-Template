import 'package:flutter/material.dart';

class ColorPallete {
  Color primaryColor;
  Color accentColor;
  Color monochromaticColor;

  Color white;
  Color black;
  Color red;
  Color blue;
  Color green;
  Color transparent;
  Color weekEnd;
  Color darkGrey;
  Color darkGrey12;
  Color darkGrey26;
  Color darkGrey38;
  Color darkGrey45;
  Color darkGrey54;
  Color darkGrey87;
  Color darkGreyAccent;
  Color darkGreyAccent2;
  Color darkGreyAccent3;
  Color darkGreyAccent4;
  Color grey;
  Color greyTransparent;
  Color backgroundColor;
  Color backgroundColor1;
  Color backgroundColor2;
  Color backgroundColor3;
  Color backgroundColor4;
  Color backgroundColor5;
  Color backgroundDarkColor;
  Color accentDarkColor;
  Color onboardingColor1;
  Color onboardingColor2;
  Color onboardingColor3;

  ColorPallete({
    this.primaryColor,
    this.accentColor,
    this.monochromaticColor,
    this.white,
    this.black,
    this.red,
    this.blue,
    this.green,
    this.transparent,
    this.weekEnd,
    this.darkGrey,
    this.darkGrey12,
    this.darkGrey26,
    this.darkGrey38,
    this.darkGrey45,
    this.darkGrey54,
    this.darkGrey87,
    this.darkGreyAccent,
    this.darkGreyAccent2,
    this.darkGreyAccent3,
    this.darkGreyAccent4,
    this.grey,
    this.greyTransparent,
    this.backgroundColor,
    this.backgroundColor1,
    this.backgroundColor2,
    this.backgroundColor3,
    this.backgroundColor4,
    this.backgroundColor5,
    this.backgroundDarkColor,
    this.accentDarkColor,
    this.onboardingColor1,
    this.onboardingColor2,
    this.onboardingColor3,
  });

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

  /// Visit this link if you want get generate nice color [https://mycolor.space/]
  void configuration({
    Color primaryColor,
    Color accentColor,
    Color monochromaticColor,
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
    this.primaryColor = primaryColor ?? Color(0xFF3A86FF);
    this.accentColor = accentColor ?? Color(0xFFFFB33A);
    this.monochromaticColor = monochromaticColor ?? Color(0xFFFFFFFF);
    this.white = white ?? Color(0xFFFFFFFF);
    this.black = black ?? Color(0xFF222831);
    this.red = red ?? Color(0xFFd63447);
    this.blue = blue ?? Color(0xFF1b6ca8);
    this.green = green ?? Color(0xFF21bf73);
    this.transparent = transparent ?? Color(0x00000000);
    this.weekEnd = weekEnd ?? Color(0xFFf0134d);
    this.darkGrey = darkGrey ?? Color(0xFF121212);
    this.darkGrey12 = darkGrey12 ?? Color(0xFF121212).withOpacity(.12);
    this.darkGrey26 = darkGrey26 ?? Color(0xFF121212).withOpacity(.26);
    this.darkGrey38 = darkGrey38 ?? Color(0xFF121212).withOpacity(.38);
    this.darkGrey45 = darkGrey45 ?? Color(0xFF121212).withOpacity(.45);
    this.darkGrey54 = darkGrey54 ?? Color(0xFF121212).withOpacity(.54);
    this.darkGrey87 = darkGrey87 ?? Color(0xFF121212).withOpacity(.87);
    this.darkGreyAccent = darkGreyAccent ?? Color(0xFF222831);
    this.darkGreyAccent2 = darkGreyAccent2 ?? Color(0xFF525252);
    this.darkGreyAccent3 = darkGreyAccent3 ?? Color(0xFF414141);
    this.darkGreyAccent4 = darkGreyAccent4 ?? Color(0xFF313131);
    this.grey = grey ?? Color(0xFF969696);
    this.greyTransparent = greyTransparent ?? Color(0xFF3A86FF);
    this.backgroundColor = backgroundColor ?? Color(0xFFf9f9f9);
    this.backgroundColor1 = backgroundColor1 ?? Color(0xFFfcfefe);
    this.backgroundColor2 = backgroundColor2 ?? Color(0xFFF8FCFF);
    this.backgroundColor3 = backgroundColor3 ?? Color(0xFFf6f6f6);
    this.backgroundColor4 = backgroundColor4 ?? Color(0xFFfbfbfb);
    this.backgroundColor5 = backgroundColor5 ?? Color(0xFFf2f2f2);
    this.backgroundDarkColor = backgroundDarkColor ?? Color(0xFF003545);
    this.accentDarkColor = accentDarkColor ?? Color(0xFFf638dc);
    this.onboardingColor1 = onboardingColor1 ?? Color(0xFF82B832);
    this.onboardingColor2 = onboardingColor2 ?? Color(0xFFB83282);
    this.onboardingColor3 = onboardingColor3 ?? Color(0xFF3282B8);
  }
}

final colorPallete = ColorPallete();
