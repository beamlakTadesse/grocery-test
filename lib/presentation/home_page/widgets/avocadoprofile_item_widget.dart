import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/constants/constants.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/navigator_service.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/data/models/productModel.dart';
import 'package:grocery/presentation/itemdetails_two_screen/bloc/itemdetails_two_bloc.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../models/avocadoprofile_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AvocadoprofileItemWidget extends StatelessWidget {
  AvocadoprofileItemWidget(
    this.avocadoprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductData avocadoprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context
            .read<ItemdetailsTwoBloc>()
            .add(ItemdetailEvent(avocadoprofileItemModelObj.id));
        NavigatorService.pushNamed(
          AppRoutes.itemdetailsTwoScreen,
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Container(
          height: getVerticalSize(199),
          width: getHorizontalSize(150),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                url: IMAGE_BASE_URL + avocadoprofileItemModelObj.primaryImage,
                imagePath: ImageConstant.imgPlaceholder199x150,
                height: getVerticalSize(199),
                width: getHorizontalSize(150),
                radius: BorderRadius.circular(
                  getHorizontalSize(18),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIcwishlistPink500,
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(
                        left: 14,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(150),
                      margin: getMargin(
                        top: 38,
                      ),
                      padding: getPadding(
                        all: 14,
                      ),
                      decoration: AppDecoration.gradientGrayToGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 40,
                            ),
                            child: Text(
                              avocadoprofileItemModelObj.name,
                              style: CustomTextStyles.titleMediumBlack90016,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              avocadoprofileItemModelObj.measuringUnit,
                              style: CustomTextStyles.labelSmallBlack900,
                            ),
                            //  Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Text(
                            //       avocadoprofileItemModelObj.measuringUnit,
                            //       style: CustomTextStyles.labelSmallBlack900,
                            //     ),
                            //     TextButton(
                            //       child: Text('Add to cart'),
                            //       style: CustomTextStyles.labelSmallBlack900,
                            //       onPressed: () {},
                            //     )
                            //   ],
                            // ),
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
      ),
    );
  }
}
