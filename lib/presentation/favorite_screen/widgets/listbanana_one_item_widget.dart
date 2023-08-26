import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/theme/custom_button_style.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/listbanana_one_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbananaOneItemWidget extends StatelessWidget {
  ListbananaOneItemWidget(
    this.listbananaOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListbananaOneItemModel listbananaOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              Row(
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
    );
  }
}
