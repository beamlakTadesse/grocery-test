import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../../core/app_export.dart';
import '../itemdetails_two_screen/widgets/slider_item_widget.dart';
import 'bloc/itemdetails_two_bloc.dart';
import 'models/itemdetails_two_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemdetailsTwoScreen extends StatelessWidget {
  const ItemdetailsTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ItemdetailsTwoBloc>(
        create: (context) => ItemdetailsTwoBloc(
            ItemdetailsTwoState(itemdetailsTwoModelObj: ItemdetailsTwoModel()))
          ..add(ItemdetailsTwoInitialEvent()),
        child: ItemdetailsTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: getVerticalSize(776),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          BlocBuilder<ItemdetailsTwoBloc, ItemdetailsTwoState>(
                              builder: (context, state) {
                            return CarouselSlider.builder(
                                options: CarouselOptions(
                                    height: getVerticalSize(230),
                                    initialPage: 0,
                                    autoPlay: true,
                                    viewportFraction: 1.0,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      state.sliderIndex = index;
                                    }),
                                itemCount: state.itemdetailsTwoModelObj
                                        ?.sliderItemList.length ??
                                    0,
                                itemBuilder: (context, index, realIndex) {
                                  SliderItemModel model = state
                                          .itemdetailsTwoModelObj
                                          ?.sliderItemList[index] ??
                                      SliderItemModel();
                                  return SliderItemWidget(model);
                                });
                          }),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: getPadding(
                                      left: 28, top: 17, right: 28, bottom: 17),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup150),
                                          fit: BoxFit.cover)),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftGray10001,
                                      height: getVerticalSize(22),
                                      width: getHorizontalSize(24),
                                      onTap: () {
                                        onTapImgArrowleftone(context);
                                      }))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: getPadding(
                                      left: 16, top: 28, right: 16, bottom: 28),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: getVerticalSize(88),
                                            width: getHorizontalSize(331),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Opacity(
                                                                opacity: 0.9,
                                                                child: Text(
                                                                    "lbl_fresh_orange"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .headlineSmallPoppinsBlack900)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            13),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "lbl_4_9"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.headlineSmallPoppinsPrimary),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              113),
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
                                                                                decoration: BoxDecoration(color: theme.colorScheme.primary)),
                                                                            Padding(
                                                                                padding: getPadding(left: 25),
                                                                                child: Text("lbl_3".tr, style: CustomTextStyles.titleLargeMedium)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgGridPrimary,
                                                                                height: getSize(15),
                                                                                width: getSize(15),
                                                                                margin: getMargin(left: 20, top: 7, bottom: 7))
                                                                          ]))
                                                                    ]))
                                                          ])),
                                                  CustomElevatedButton(
                                                      height:
                                                          getVerticalSize(37),
                                                      width: getHorizontalSize(
                                                          125),
                                                      text: "lbl_add_to_cart"
                                                          .tr
                                                          .toUpperCase(),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .fillPrimaryTL18,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelMediumBlack900,
                                                      alignment:
                                                          Alignment.topRight)
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 12, top: 9),
                                                child: Text(
                                                    "lbl_description".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900SemiBold_1))),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgTabindicator,
                                            height: getVerticalSize(2),
                                            width: getHorizontalSize(319),
                                            margin: getMargin(top: 8)),
                                        Container(
                                            width: getHorizontalSize(310),
                                            margin: getMargin(
                                                left: 12,
                                                top: 10,
                                                right: 20,
                                                bottom: 10),
                                            child: Text(
                                                "msg_lorem_ipsum_dolor".tr,
                                                maxLines: 10,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(height: 1.71)))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: BlocBuilder<ItemdetailsTwoBloc,
                                      ItemdetailsTwoState>(
                                  builder: (context, state) {
                                return Container(
                                    height: getVerticalSize(6),
                                    margin: getMargin(top: 195),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: state.sliderIndex,
                                        count: state.itemdetailsTwoModelObj
                                                ?.sliderItemList.length ??
                                            0,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 5,
                                            activeDotColor: theme
                                                .colorScheme.onPrimaryContainer
                                                .withOpacity(1),
                                            dotColor: theme
                                                .colorScheme.onPrimaryContainer,
                                            dotHeight: getVerticalSize(6),
                                            dotWidth: getHorizontalSize(23))));
                              }))
                        ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
