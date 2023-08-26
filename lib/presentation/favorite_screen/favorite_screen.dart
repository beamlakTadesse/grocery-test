import 'package:flutter/material.dart';
import 'package:grocery/core/app_export.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/presentation/home_page/home_page.dart';
import 'package:grocery/presentation/shoppingcart_three_page/shoppingcart_three_page.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/theme/app_decoration.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_bottom_bar.dart';

import '../favorite_screen/widgets/listbanana_one1_item_widget.dart';
import '../favorite_screen/widgets/listbanana_one_item_widget.dart';
import 'bloc/favorite_bloc.dart';
import 'models/favorite_model.dart';
import 'models/listbanana_one1_item_model.dart';
import 'models/listbanana_one_item_model.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoriteBloc>(
        create: (context) =>
            FavoriteBloc(FavoriteState(favoriteModelObj: FavoriteModel()))
              ..add(FavoriteInitialEvent()),
        child: FavoriteScreen());
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 28, top: 15, right: 28, bottom: 15),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup361),
                                  fit: BoxFit.cover)),
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtFavorites(context);
                              },
                              child: Padding(
                                  padding: getPadding(bottom: 8),
                                  child: Text("lbl_favorite_s".tr,
                                      style: theme.textTheme.titleLarge)))),
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 6),
                                  padding: getPadding(left: 25, right: 25),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder18),
                                  child: Padding(
                                      padding: getPadding(left: 3, top: 12),
                                      child: BlocSelector<FavoriteBloc,
                                              FavoriteState, FavoriteModel?>(
                                          selector: (state) =>
                                              state.favoriteModelObj,
                                          builder: (context, favoriteModelObj) {
                                            return ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(37));
                                                },
                                                itemCount: favoriteModelObj
                                                        ?.listbananaOneItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  ListbananaOneItemModel model =
                                                      favoriteModelObj
                                                                  ?.listbananaOneItemList[
                                                              index] ??
                                                          ListbananaOneItemModel();
                                                  return ListbananaOneItemWidget(
                                                      model);
                                                });
                                          }))))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 13),
                              child: BlocSelector<FavoriteBloc, FavoriteState,
                                      FavoriteModel?>(
                                  selector: (state) => state.favoriteModelObj,
                                  builder: (context, favoriteModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(13));
                                        },
                                        itemCount: favoriteModelObj
                                                ?.listbananaOne1ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          ListbananaOne1ItemModel model =
                                              favoriteModelObj
                                                          ?.listbananaOne1ItemList[
                                                      index] ??
                                                  ListbananaOne1ItemModel();
                                          return ListbananaOne1ItemWidget(
                                              model);
                                        });
                                  })))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
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

  /// Navigates to the itemdetailsTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the itemdetailsTwoScreen.
  onTapTxtFavorites(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.itemdetailsTwoScreen,
    );
  }
}
