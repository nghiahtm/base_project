import 'package:base_project/common/constant/routes_string_constant.dart';
import 'package:base_project/common/theme/theme_data.dart';
import 'package:base_project/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: StringRoutes.homeRoutes,
      onGenerateRoute: Routes.generateRoutes,
      theme: ThemeDataCustom.buildTheme(),
    );
  }
}
