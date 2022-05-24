import 'package:base_project/common/constant/routes_string_constant.dart';
import 'package:base_project/common/injector/get_it.dart';
import 'package:base_project/presentation/journey/home/home_bloc/home_bloc.dart';
import 'package:base_project/presentation/journey/home/home_widget.dart';
import 'package:base_project/presentation/widgets/error_routes_widget/error_routes_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case StringRoutes.homeRoutes:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (_) => Injector.getIt.get<HomeBloc>(),
                child: const HomeScreen()));
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoutesWidget());
    }
  }
}
