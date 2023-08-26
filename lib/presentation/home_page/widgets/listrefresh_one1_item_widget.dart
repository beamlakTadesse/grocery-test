import 'package:grocery/core/constants/constants.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/data/models/categoryModel.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/listrefresh_one1_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListrefreshOne1ItemWidget extends StatelessWidget {
  ListrefreshOne1ItemWidget(
    this.listrefreshOne1ItemModelObj, {
    Key? key,
    this.onTapStackrefresh,
  }) : super(
          key: key,
        );

  CategoryData listrefreshOne1ItemModelObj;

  VoidCallback? onTapStackrefresh;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(73),
      width: getHorizontalSize(93),
      padding: getPadding(
        left: 26,
        top: 16,
        right: 26,
        bottom: 16,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: CustomImageView(
        url: IMAGE_BASE_URL + listrefreshOne1ItemModelObj.primaryImage,
        svgPath: ImageConstant.imgRefresh,
        height: getSize(40),
        width: getSize(40),
        alignment: Alignment.center,
      ),
    );
  }
}
