import 'package:grocery/core/constants/constants.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/data/models/categoryModel.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/gridfruits87ite_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridfruits87iteItemWidget extends StatelessWidget {
  Gridfruits87iteItemWidget(
    this.gridfruits87iteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoryData gridfruits87iteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 33,
        top: 5,
        right: 33,
        bottom: 5,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            url: IMAGE_BASE_URL + gridfruits87iteItemModelObj.primaryImage,
            height: getSize(71),
            width: getSize(71),
            margin: getMargin(
              top: 5,
            ),
          ),
          Container(
            width: getHorizontalSize(49),
            margin: getMargin(
              top: 5,
            ),
            child: Text(
              gridfruits87iteItemModelObj.name,
              style: CustomTextStyles.titleMediumYellow900,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
