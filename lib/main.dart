import 'package:flutter/material.dart';

import 'core/configurations/pages_routes.dart';
import 'core/configurations/app_router.dart';
import 'core/theme/application_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //theme: ApplicationThemeManager.darkModeTheme
        initialRoute: PagesRoutes.initial,
        onGenerateRoute: AppRouter.onGenerateRoute);
  }
}

