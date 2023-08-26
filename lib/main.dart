import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:grocery/core/utils/navigator_service.dart';
import 'package:grocery/presentation/home_page/bloc/product_bloc.dart';
import 'package:grocery/presentation/itemdetails_two_screen/bloc/itemdetails_two_bloc.dart';
import 'package:grocery/routes/app_routes.dart';
import 'core/app_export.dart';
import 'core/utils/pref_utils.dart';
import 'localization/app_localization.dart';
import 'theme/theme_helper.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Future.wait([
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //   ]),
  await PrefUtils().init();
  // ]).then((value) {
  runApp(MyApp());
  // });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
            create: (_) => ThemeBloc(ThemeState(
                  themeType: PrefUtils().getThemeData(),
                ))),
        BlocProvider<ProductBloc>(create: (_) => ProductBloc(ProductState())),
        BlocProvider<ItemdetailsTwoBloc>(
            create: (_) => ItemdetailsTwoBloc(ItemdetailsTwoState()))
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: theme,
            title: 'beamlaktadesse_s_application5',
            navigatorKey: NavigatorService.navigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale(
                'en',
                '',
              ),
            ],
            initialRoute: AppRoutes.initialRoute,
            routes: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
