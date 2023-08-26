import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/localization/app_localization.dart';
import 'package:grocery/presentation/favorite_screen/favorite_screen.dart';
import 'package:grocery/presentation/home_page/bloc/home_bloc.dart';
import 'package:grocery/presentation/home_page/home_page.dart';
import 'package:grocery/presentation/home_page/models/home_model.dart';
import 'package:grocery/presentation/shoppingcart_three_page/shoppingcart_three_page.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/widgets/app_bar/appbar_image.dart';
import 'package:grocery/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:grocery/widgets/app_bar/custom_app_bar.dart';
import 'package:grocery/widgets/custom_bottom_bar.dart';

import '../categories_three_screen/widgets/gridfruits87ite_item_widget.dart';
import 'bloc/categories_three_bloc.dart';
import 'models/categories_three_model.dart';
import 'models/gridfruits87ite_item_model.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/theme/theme_helper.dart';

import '../../core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class CategoriesThreeScreen extends StatelessWidget {
  CategoriesThreeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: CategoriesThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 9, bottom: 9),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup361),
                                  fit: BoxFit.cover)),
                          child: CustomAppBar(
                              height: getVerticalSize(50),
                              leadingWidth: getHorizontalSize(52),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: getMargin(left: 28, bottom: 17),
                                  onTap: () {
                                    onTapArrowleftone(context);
                                  }),
                              centerTitle: true,
                              title:
                                  AppbarSubtitle1(text: "lbl_categories".tr))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 36, top: 16, right: 36),
                              child: BlocBuilder<HomeBloc, HomeState>(
                                  builder: (context, state) {
                                return state is LoadedCategoryState
                                    ? GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(139),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                    getHorizontalSize(23),
                                                crossAxisSpacing:
                                                    getHorizontalSize(23)),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: state.data.data.length ?? 0,
                                        itemBuilder: (context, index) {
                                          return Gridfruits87iteItemWidget(
                                              state.data.data[index]);
                                        })
                                    : Center(
                                        child: CircularProgressIndicator(),
                                      );
                              })))
                    ])),
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

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
