import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../../core/app_export.dart';
import 'bloc/onboardingzero_bloc.dart';
import 'models/onboardingzero_model.dart';
import 'package:flutter/material.dart';

class OnboardingzeroScreen extends StatelessWidget {
  const OnboardingzeroScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingzeroBloc>(
        create: (context) => OnboardingzeroBloc(
            OnboardingzeroState(onboardingzeroModelObj: OnboardingzeroModel()))
          ..add(OnboardingzeroInitialEvent()),
        child: OnboardingzeroScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingzeroBloc, OnboardingzeroState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgGroup441,
                            height: getVerticalSize(197),
                            width: getHorizontalSize(131)),
                        Padding(
                            padding: getPadding(top: 28),
                            child: Text("lbl_fresh_fruits".tr,
                                style: theme.textTheme.displaySmall))
                      ]))));
    });
  }
}
