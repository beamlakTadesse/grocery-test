import 'package:flutter/material.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitle4 extends StatelessWidget {
  AppbarSubtitle4({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodyMediumGray700.copyWith(
            color: appTheme.gray700,
          ),
        ),
      ),
    );
  }
}
