import 'package:grocery/core/app_export.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:grocery/widgets/app_bar/custom_app_bar.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../shoppingcart_three_page/widgets/listfruits_one_item_widget.dart';
import 'bloc/shoppingcart_three_bloc.dart';
import 'models/listfruits_one_item_model.dart';
import 'models/shoppingcart_three_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ShoppingcartThreePage extends StatelessWidget {
  const ShoppingcartThreePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShoppingcartThreeBloc>(
        create: (context) => ShoppingcartThreeBloc(ShoppingcartThreeState(
            shoppingcartThreeModelObj: ShoppingcartThreeModel()))
          ..add(ShoppingcartThreeInitialEvent()),
        child: ShoppingcartThreePage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup361),
                                  fit: BoxFit.cover)),
                          child: CustomAppBar(
                              title: AppbarSubtitle1(
                                  text: "lbl_item_details".tr,
                                  margin: getMargin(left: 42),
                                  onTap: () {
                                    onTapItemdetails(context);
                                  }))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 6),
                              child: Padding(
                                  padding: getPadding(bottom: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding:
                                                getPadding(left: 28, right: 28),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                            child: Padding(
                                                padding: getPadding(top: 12),
                                                child: BlocSelector<
                                                        ShoppingcartThreeBloc,
                                                        ShoppingcartThreeState,
                                                        ShoppingcartThreeModel?>(
                                                    selector: (state) => state
                                                        .shoppingcartThreeModelObj,
                                                    builder: (context,
                                                        shoppingcartThreeModelObj) {
                                                      return ListView.separated(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        36));
                                                          },
                                                          itemCount:
                                                              shoppingcartThreeModelObj
                                                                      ?.listfruitsOneItemList
                                                                      .length ??
                                                                  0,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListfruitsOneItemModel
                                                                model =
                                                                shoppingcartThreeModelObj
                                                                            ?.listfruitsOneItemList[
                                                                        index] ??
                                                                    ListfruitsOneItemModel();
                                                            return ListfruitsOneItemWidget(
                                                                model);
                                                          });
                                                    }))),
                                        Container(
                                            width: double.maxFinite,
                                            margin: getMargin(top: 12),
                                            padding: getPadding(
                                                left: 28,
                                                top: 12,
                                                right: 28,
                                                bottom: 12),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPlaceholder1,
                                                      height:
                                                          getVerticalSize(113),
                                                      width:
                                                          getHorizontalSize(93),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  18))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_vegetables2"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge),
                                                            Text(
                                                                "lbl_broccoli"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMediumBlack90016),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            32),
                                                                child: Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4,
                                                                              bottom:
                                                                                  3),
                                                                          child: Text(
                                                                              "lbl_6_3".tr,
                                                                              style: CustomTextStyles.titleMediumYellow900_1)),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              113),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  54),
                                                                          padding: getPadding(
                                                                              left: 12,
                                                                              top: 2,
                                                                              right: 12,
                                                                              bottom: 2),
                                                                          decoration: AppDecoration.fillGray20001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                            Container(
                                                                                height: getVerticalSize(3),
                                                                                width: getHorizontalSize(15),
                                                                                margin: getMargin(top: 13, bottom: 13),
                                                                                decoration: BoxDecoration(color: appTheme.gray40001)),
                                                                            Padding(
                                                                                padding: getPadding(left: 25),
                                                                                child: Text("lbl_1".tr, style: CustomTextStyles.titleLargeBluegray900)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgGridGray40001,
                                                                                height: getSize(15),
                                                                                width: getSize(15),
                                                                                margin: getMargin(left: 25, top: 7, bottom: 7))
                                                                          ]))
                                                                    ]))
                                                          ]))
                                                ])),
                                        Container(
                                            height: getVerticalSize(137),
                                            width: double.maxFinite,
                                            margin: getMargin(top: 13),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTrashbin1,
                                                      height: getSize(28),
                                                      width: getSize(28),
                                                      alignment:
                                                          Alignment.centerRight,
                                                      margin:
                                                          getMargin(right: 36)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              double.maxFinite,
                                                          padding: getPadding(
                                                              left: 28,
                                                              top: 12,
                                                              right: 28,
                                                              bottom: 12),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder18),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPlaceholder2,
                                                                    height:
                                                                        getVerticalSize(
                                                                            113),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            93),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(18))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_mushroom2".tr,
                                                                              style: theme.textTheme.labelLarge),
                                                                          Padding(
                                                                              padding: getPadding(top: 1),
                                                                              child: Text("lbl_oyster_mushroom".tr, style: CustomTextStyles.titleMediumBlack90016)),
                                                                          Padding(
                                                                              padding: getPadding(top: 29),
                                                                              child: Row(children: [
                                                                                Padding(padding: getPadding(top: 4, bottom: 3), child: Text("lbl_2_7".tr, style: CustomTextStyles.titleMediumYellow900_1)),
                                                                                Container(
                                                                                    width: getHorizontalSize(113),
                                                                                    margin: getMargin(left: 56),
                                                                                    padding: getPadding(left: 12, top: 2, right: 12, bottom: 2),
                                                                                    decoration: AppDecoration.fillGray20001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                      Container(height: getVerticalSize(3), width: getHorizontalSize(15), margin: getMargin(top: 13, bottom: 13), decoration: BoxDecoration(color: appTheme.gray40001)),
                                                                                      Padding(padding: getPadding(left: 25), child: Text("lbl_1".tr, style: CustomTextStyles.titleLargeBluegray900)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgGridGray40001, height: getSize(15), width: getSize(15), margin: getMargin(left: 25, top: 7, bottom: 7))
                                                                                    ]))
                                                                              ]))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 65),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("lbl_total".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack900_1),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Text("lbl_6".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumBlack900_1))
                                                ])),
                                        CustomElevatedButton(
                                            height: getVerticalSize(40),
                                            text: "lbl_place_order"
                                                .tr
                                                .toUpperCase(),
                                            margin: getMargin(
                                                left: 28, top: 11, right: 28),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL18)
                                      ]))))
                    ]))));
  }

  /// Navigates to the itemdetailsTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the itemdetailsTwoScreen.
  onTapItemdetails(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.itemdetailsTwoScreen,
    );
  }
}
