import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_button_style.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/listbanana_one1_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbananaOne1ItemWidget extends StatelessWidget {
  ListbananaOne1ItemWidget(
    this.listbananaOne1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListbananaOne1ItemModel listbananaOne1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 28,
        top: 12,
        right: 28,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlaceholder113x93,
            height: getVerticalSize(113),
            width: getHorizontalSize(93),
            radius: BorderRadius.circular(
              getHorizontalSize(18),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 16,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_banana".tr,
                        style: CustomTextStyles.titleMediumBlack90016,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFavoritePink500,
                        height: getVerticalSize(18),
                        width: getHorizontalSize(20),
                        margin: getMargin(
                          top: 2,
                          bottom: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 47,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                          bottom: 3,
                        ),
                        child: Text(
                          "lbl_28_8".tr,
                          style: CustomTextStyles.titleMediumYellow900_1,
                        ),
                      ),
                      CustomElevatedButton(
                        height: getVerticalSize(35),
                        width: getHorizontalSize(113),
                        text: "lbl_add_to_cart".tr,
                        margin: getMargin(
                          left: 43,
                        ),
                        buttonStyle: CustomButtonStyles.fillGrayTL17,
                        buttonTextStyle: CustomTextStyles.labelLargeBlack900_1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
