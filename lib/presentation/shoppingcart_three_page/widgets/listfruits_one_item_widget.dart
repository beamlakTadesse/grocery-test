import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/listfruits_one_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListfruitsOneItemWidget extends StatelessWidget {
  ListfruitsOneItemWidget(
    this.listfruitsOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListfruitsOneItemModel listfruitsOneItemModelObj;

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
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listfruitsOneItemModelObj.fruitstwoTxt,
                style: theme.textTheme.labelLarge,
              ),
              Text(
                listfruitsOneItemModelObj.bananaTxt,
                style: CustomTextStyles.titleMediumBlack90016,
              ),
              Padding(
                padding: getPadding(
                  top: 31,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 3,
                      ),
                      child: Text(
                        listfruitsOneItemModelObj.priceTxt,
                        style: CustomTextStyles.titleMediumYellow900_1,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(113),
                      margin: getMargin(
                        left: 43,
                      ),
                      padding: getPadding(
                        left: 12,
                        top: 2,
                        right: 12,
                        bottom: 2,
                      ),
                      decoration: AppDecoration.fillGray20001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getVerticalSize(3),
                            width: getHorizontalSize(15),
                            margin: getMargin(
                              top: 13,
                              bottom: 13,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.gray40001,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 25,
                            ),
                            child: Text(
                              listfruitsOneItemModelObj.threeTxt,
                              style: CustomTextStyles.titleLargeMedium,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgGridGray40001,
                            height: getSize(15),
                            width: getSize(15),
                            margin: getMargin(
                              left: 20,
                              top: 7,
                              bottom: 7,
                            ),
                          ),
                        ],
                      ),
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
