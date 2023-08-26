import 'package:grocery/core/app_export.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/presentation/favorite_screen/favorite_screen.dart';
import 'package:grocery/presentation/home_page/bloc/product_bloc.dart';
import 'package:grocery/presentation/shoppingcart_three_page/shoppingcart_three_page.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/custom_text_style.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_bottom_bar.dart';
import 'package:grocery/widgets/custom_elevated_button.dart';
import 'package:grocery/widgets/custom_image_view.dart';

import '../home_page/widgets/avocadoprofile_item_widget.dart';
import '../home_page/widgets/listrefresh_one1_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/avocadoprofile_item_model.dart';
import 'models/home_model.dart';
import 'models/listrefresh_one1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    context.read<ProductBloc>().add(GetProductsEvent());
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) => {},
              builder: (context, state) {
                return Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: SizedBox(
                        height: getVerticalSize(1032),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topRight, children: [
                          SizedBox(
                              width: double.maxFinite,
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      padding: getPadding(
                                          left: 27,
                                          top: 20,
                                          right: 27,
                                          bottom: 20),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: fs.Svg(ImageConstant
                                                  .img03onboardingthree),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(left: 1),
                                                child: Text(
                                                    "lbl_good_morning".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray700)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 1, top: 2),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          "lbl_rafatul_islam"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgNotificationGray80001,
                                                          height:
                                                              getVerticalSize(
                                                                  24),
                                                          width:
                                                              getHorizontalSize(
                                                                  26),
                                                          margin: getMargin(
                                                              bottom: 5))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 174,
                                                    right: 4),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Latest Products".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumBlack900SemiBold_1),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height:
                                                              getVerticalSize(
                                                                  14),
                                                          width:
                                                              getHorizontalSize(
                                                                  16),
                                                          margin: getMargin(
                                                              top: 3,
                                                              bottom: 9))
                                                    ])),
                                            Expanded(
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 1, top: 11),
                                                    child: BlocBuilder<
                                                            ProductBloc,
                                                            ProductState>(
                                                        builder: (context,
                                                            homeModelObj) {
                                                      return homeModelObj
                                                              is LoadedProductState
                                                          ? GridView.builder(
                                                              shrinkWrap: true,
                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                  mainAxisExtent:
                                                                      getVerticalSize(
                                                                          200),
                                                                  crossAxisCount:
                                                                      2,
                                                                  mainAxisSpacing:
                                                                      getHorizontalSize(
                                                                          20),
                                                                  crossAxisSpacing:
                                                                      getHorizontalSize(
                                                                          20)),
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              itemCount:
                                                                  homeModelObj
                                                                          .data
                                                                          .data
                                                                          .length ??
                                                                      0,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return AvocadoprofileItemWidget(
                                                                    homeModelObj
                                                                            .data
                                                                            .data[
                                                                        index]);
                                                              })
                                                          : state is LoadingProductState
                                                              ? Center(
                                                                  child:
                                                                      CircularProgressIndicator(),
                                                                )
                                                              : SizedBox();
                                                    }))),
                                          ])))),
                          SizedBox(
                              width: double.maxFinite,
                              height: 200,
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: getPadding(top: 90),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    right: 83, left: 27),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_categories".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumBlack900SemiBold_1),
                                                      CustomImageView(
                                                          onTap: () {
                                                            onTapStackrefresh(
                                                                context);
                                                          },
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height:
                                                              getVerticalSize(
                                                                  14),
                                                          width:
                                                              getHorizontalSize(
                                                                  16),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 8))
                                                    ])),
                                            Expanded(
                                                child: SizedBox(
                                                    height: getVerticalSize(84),
                                                    child: state
                                                            is LoadedCategoryState
                                                        ? ListView.separated(
                                                            padding: getPadding(
                                                                top: 11,
                                                                right: 55),
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            separatorBuilder:
                                                                (context,
                                                                    index) {
                                                              return SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          10));
                                                            },
                                                            itemCount: state
                                                                    .data
                                                                    .data
                                                                    .length ??
                                                                0,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              return ListrefreshOne1ItemWidget(
                                                                state.data.data[
                                                                    index],
                                                              );
                                                            })
                                                        : Center(
                                                            child:
                                                                CircularProgressIndicator())))
                                          ])))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  width: getHorizontalSize(44),
                                  margin: getMargin(top: 190),
                                  child: Text("msg_fresh_fruits_delivery".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleMediumGray5001)))
                        ])));
              },
            ),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(context, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Icwishlist:
        return AppRoutes.favoriteScreen;
      case BottomBarEnum.Iccart:
        return AppRoutes.shoppingcartScreen;
      default:
        return AppRoutes.homePage;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.shoppingcartScreen:
        return ShoppingcartThreePage.builder(context);
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.favoriteScreen:
        return FavoriteScreen.builder(context);
      default:
        return HomePage.builder(context);
    }
  }

  /// Navigates to the categoriesThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the categoriesThreeScreen.
  onTapStackrefresh(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoriesThreeScreen,
    );
  }
}
