import 'package:grocery/core/constants/constants.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  String sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        url: IMAGE_BASE_URL + sliderItemModelObj,
        imagePath: ImageConstant.imgRectangle244,
        height: getVerticalSize(230),
        width: getHorizontalSize(375),
        fit: BoxFit.fill,
      ),
    );
  }
}
