import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:grocery/widgets/app_bar/custom_app_bar.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../../core/app_export.dart';
import 'bloc/thank_you_bloc.dart';
import 'models/thank_you_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThankYouBloc>(
      create: (context) => ThankYouBloc(ThankYouState(
        thankYouModelObj: ThankYouModel(),
      ))
        ..add(ThankYouInitialEvent()),
      child: ThankYouScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ThankYouBloc, ThankYouState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: getPadding(
                      top: 16,
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup361,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomAppBar(
                      centerTitle: true,
                      title: AppbarSubtitle1(
                        text: "lbl_thank_you".tr,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: getPadding(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgGroupBlack900,
                            height: getVerticalSize(189),
                            width: getHorizontalSize(319),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 47,
                            ),
                            child: Text(
                              "msg_your_order_in_process".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(282),
                            margin: getMargin(
                              left: 46,
                              top: 10,
                              right: 46,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_dolor2".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.71,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 95,
                            ),
                            child: Divider(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomElevatedButton(
              text: "lbl_go_back_home".tr.toUpperCase(),
              margin: getMargin(
                left: 28,
                right: 28,
                bottom: 60,
              ),
            ),
          ),
        );
      },
    );
  }
}
