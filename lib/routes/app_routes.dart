import 'package:flutter/material.dart';
import 'package:grocery/presentation/categories_three_screen/categories_three_screen.dart';
import 'package:grocery/presentation/favorite_screen/favorite_screen.dart';
import 'package:grocery/presentation/home_page/home_page.dart';
import 'package:grocery/presentation/itemdetails_two_screen/itemdetails_two_screen.dart';

import 'package:grocery/presentation/onboardingzero_screen/onboardingzero_screen.dart';
import 'package:grocery/presentation/shoppingcart_three_page/shoppingcart_three_page.dart';
import 'package:grocery/presentation/signin_screen/signin_screen.dart';
import 'package:grocery/presentation/thank_you_screen/thank_you_screen.dart';

class AppRoutes {
  static const String onboardingzeroScreen = '/onboardingzero_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String itemdetailsPage = '/itemdetails_page';

  static const String shoppingcartTwoScreen = '/shoppingcart_two_screen';

  static const String shippingaddressScreen = '/shippingaddress_screen';

  static const String signinScreen = '/signin_screen';

  static const String categoriesTwoScreen = '/categories_two_screen';

  static const String itemdetailsTwoScreen = '/itemdetails_two_screen';

  static const String thankYouScreen = '/thank_you_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String homePage = '/home_page';

  static const String categoriesThreeScreen = '/categories_three_screen';

  static const String itemdetailsOnePage = '/itemdetails_one_page';

  static const String shoppingcartScreen = '/shoppingcart_screen';

  static const String homeFourScreen = '/home_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingzeroScreen: OnboardingzeroScreen.builder,
        signinScreen: SigninScreen.builder,
        itemdetailsTwoScreen: ItemdetailsTwoScreen.builder,
        thankYouScreen: ThankYouScreen.builder,
        favoriteScreen: FavoriteScreen.builder,
        categoriesThreeScreen: CategoriesThreeScreen.builder,
        homeFourScreen: HomePage.builder,
        shoppingcartScreen: ShoppingcartThreePage.builder,
        initialRoute: OnboardingzeroScreen.builder
      };
}
