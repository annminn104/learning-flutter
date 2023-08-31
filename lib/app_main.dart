import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/routes/app_router.dart';
import 'config/routes/routes.dart';
import 'shared/constants/app/colors.dart';
import 'shared/constants/app/themes.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'UniPal';
    const showDebugBanner = false;
    final navigatorObservers = <NavigatorObserver>[SentryNavigatorObserver()];
    final platformIsIOS = Platform.isIOS;
    final app = platformIsIOS
        ? Theme(
            data: AppThemes.mainTheme,
            child: CupertinoApp(
              title: title,
              navigatorObservers: navigatorObservers,
              debugShowCheckedModeBanner: showDebugBanner,
              initialRoute: Routes.initialRoute,
              color: AppColors.primaryColor,
              onGenerateRoute: AppRouter.generateRoute,
              navigatorKey: AppRouter.navigatorKey,
            ),
          )
        : MaterialApp(
            title: title,
            navigatorObservers: navigatorObservers,
            debugShowCheckedModeBanner: showDebugBanner,
            color: AppColors.primaryColor,
            theme: AppThemes.mainTheme,
            initialRoute: Routes.initialRoute,
            onGenerateRoute: AppRouter.generateRoute,
            navigatorKey: AppRouter.navigatorKey,
          );
    return ProviderScope(child: app);
  }
}
