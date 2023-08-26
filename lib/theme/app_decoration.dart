import 'package:flutter/material.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/theme/theme_helper.dart';

class AppDecoration {
  // Black decorations
  static BoxDecoration get black => BoxDecoration(
        color: appTheme.black900,
      );

  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray40001 => BoxDecoration(
        color: appTheme.gray40001,
      );
  static BoxDecoration get fillGray40003 => BoxDecoration(
        color: appTheme.gray40003,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray70003 => BoxDecoration(
        color: appTheme.gray70003,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.34),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900.withOpacity(0),
            appTheme.black900,
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.34),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900.withOpacity(0),
            appTheme.black900.withOpacity(0.58),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.04, 0.84),
          end: Alignment(0.63, 0.45),
          colors: [
            // appTheme.gray800.withOpacity(0.56),
            appTheme.gray70000,
          ],
        ),
      );

  // Orange decorations
  static BoxDecoration get orange => BoxDecoration(
        color: appTheme.yellow900,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray10001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              -7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.21),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.26),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              9,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray70003,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray70003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray70003,
          width: getHorizontalSize(2),
        ),
      );
  static BoxDecoration get outlineGreenA => BoxDecoration(
        border: Border.all(
          color: appTheme.greenA700,
          width: getHorizontalSize(2),
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.gray40001,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: getHorizontalSize(2),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              10,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: getHorizontalSize(2),
        ),
      );
  static BoxDecoration get outlinePink => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.pink500,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.26),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              9,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineYellow => BoxDecoration(
        border: Border.all(
          color: appTheme.yellow900,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineYellow900 => BoxDecoration(
        border: Border.all(
          color: appTheme.yellow900,
          width: getHorizontalSize(2),
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.gray5001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.26),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              9,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder27 => BorderRadius.circular(
        getHorizontalSize(27),
      );

  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(20)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        getHorizontalSize(11),
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        getHorizontalSize(18),
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        getHorizontalSize(30),
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        getHorizontalSize(7),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    