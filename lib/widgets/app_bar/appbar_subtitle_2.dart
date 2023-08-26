import 'package:flutter/material.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitle2 extends StatelessWidget {
  AppbarSubtitle2({
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
          style: CustomTextStyles.titleMediumYellow90016.copyWith(
            color: appTheme.yellow900,
          ),
        ),
      ),
    );
  }
}
