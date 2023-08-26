import 'package:flutter/material.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray70004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70004,
      );
  static get bodyLargeInterGray500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumDMSans => theme.textTheme.bodyMedium!.dMSans.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumYellow900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow900,
      );
  // Headline text style
  static get headlineSmallGray70003 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray70003,
      );
  static get headlineSmallPoppins =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPoppinsBlack900 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPoppinsGray70003 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.gray70003,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPoppinsPrimary =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallYellow900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.yellow900,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeInterPurple800 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.purple800,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          11,
        ),
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  static get labelSmallBlack900_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  static get labelSmallGray70003 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray70003,
      );
  // Title text style
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10001,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray1000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumGray10001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray70003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70003,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumYellow90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow900,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumYellow900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumYellow900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow900,
      );
  static get titleSmallGray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray70003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70003,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSFProTextOnPrimaryContainer =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallYellow900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
