import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/navigator_service.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/core/utils/validation_functions.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';
import 'package:grocery/widgets/custom_text_form_field.dart';

import 'bloc/signin_bloc.dart';
import 'models/signin_model.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SigninBloc>(
        create: (context) =>
            SigninBloc(SigninState(signinModelObj: SigninModel()))
              ..add(SigninInitialEvent()),
        child: SigninScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: BlocConsumer<SigninBloc, SigninState>(
                listener: (context, state) {
              if (state is LoadedSigninErrorState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.black,
                    content: Text(state.msg),
                  ),
                );
              } else if (state is LoadedSigninState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.green,
                  content: Text("Successfully Loged in"),
                ));
              }
            }, builder: (context, state) {
              return Form(
                  key: _formKey,
                  child: SizedBox(
                      width: double.maxFinite,
                      child: SizedBox(
                          height: getVerticalSize(768),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceholder395x375,
                                    height: getVerticalSize(395),
                                    width: getHorizontalSize(375),
                                    alignment: Alignment.topCenter),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: getPadding(
                                            left: 28,
                                            top: 26,
                                            right: 28,
                                            bottom: 26),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_sign_in".tr,
                                                  style: theme
                                                      .textTheme.titleLarge),
                                              BlocSelector<
                                                      SigninBloc,
                                                      SigninState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.emailController,
                                                  builder: (context,
                                                      emailController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            emailController,
                                                        margin:
                                                            getMargin(top: 30),
                                                        hintText:
                                                            "msg_rafatul3588_gmail_com"
                                                                .tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargeBlack900,
                                                        textInputType:
                                                            TextInputType
                                                                .emailAddress,
                                                        validator: (value) {
                                                          if (value == null) {
                                                            return "Please enter valid phone";
                                                          }
                                                          return null;
                                                        },
                                                        contentPadding:
                                                            getPadding(
                                                                left: 20,
                                                                top: 18,
                                                                right: 20,
                                                                bottom: 18),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineGrayTL30);
                                                  }),
                                              CustomTextFormField(
                                                  controller:
                                                      state.group194Controller,
                                                  margin: getMargin(top: 12),
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  suffix: InkWell(
                                                      onTap: () {
                                                        context
                                                            .read<SigninBloc>()
                                                            .add(ChangePasswordVisibilityEvent(
                                                                value: !state
                                                                    .isShowPassword));
                                                      },
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 30,
                                                              top: 22,
                                                              right: 20,
                                                              bottom: 22),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          30)),
                                                              border: Border.all(
                                                                  color: appTheme
                                                                      .gray40003,
                                                                  width: getHorizontalSize(
                                                                      1))),
                                                          child: CustomImageView(
                                                              svgPath: state.isShowPassword
                                                                  ? ImageConstant
                                                                      .imgGroup378
                                                                  : ImageConstant
                                                                      .imgGroup378))),
                                                  suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                                                  obscureText: state.isShowPassword,
                                                  borderDecoration: TextFormFieldStyleHelper.outlineGrayTL301),
                                              if (state is LoadingSigninState)
                                                Center(
                                                    child:
                                                        CircularProgressIndicator()),
                                              if (!(state
                                                  is LoadingSigninState))
                                                CustomElevatedButton(
                                                    text: "lbl_sign_in2"
                                                        .tr
                                                        .toUpperCase(),
                                                    margin: getMargin(
                                                        top: 57, bottom: 42),
                                                    onTap: () {
                                                      context
                                                          .read<SigninBloc>()
                                                          .add(LoginEvent(
                                                              password: state
                                                                  .group194Controller!
                                                                  .text,
                                                              phone: state
                                                                  .emailController!
                                                                  .text));
                                                    })
                                            ])))
                              ]))));
            })));
  }

  onTapSignin(BuildContext context) {}
}
