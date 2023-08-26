import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';

import '../../core/app_export.dart';
import 'bloc/congratulations_bloc.dart';
import 'models/congratulations_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CongratulationsDialog extends StatelessWidget {
  const CongratulationsDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CongratulationsBloc>(
        create: (context) => CongratulationsBloc(CongratulationsState(
            congratulationsModelObj: CongratulationsModel()))
          ..add(CongratulationsInitialEvent()),
        child: CongratulationsDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: getHorizontalSize(333),
        padding: getPadding(left: 34, top: 6, right: 34, bottom: 6),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: getMargin(left: 1),
                  padding: getPadding(left: 31, top: 47, right: 31, bottom: 47),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup184),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("msg_congratulations".tr,
                            style: CustomTextStyles.headlineSmallYellow900),
                        Padding(
                            padding: getPadding(top: 12, bottom: 12),
                            child: Text("msg_md_rafatul_islam".tr,
                                style:
                                    CustomTextStyles.labelLargeInterPurple800))
                      ])),
              CustomElevatedButton(
                  height: getVerticalSize(46),
                  text: "lbl_sign_in2".tr.toUpperCase(),
                  margin: getMargin(left: 10, top: 6, right: 9, bottom: 57),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL23,
                  buttonTextStyle: CustomTextStyles.labelLargeBlack900,
                  onTap: () {
                    onTapSignin(context);
                  })
            ]));
  }

  /// Navigates to the signinTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signinTwoScreen.
  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signinTwoScreen,
    );
  }
}
