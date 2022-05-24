import 'package:base_project/common/bloc_observer/observer.dart';
import 'package:base_project/common/injector/get_it.dart';
import 'package:base_project/presentation/my_app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Injector.setUp();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: Observer(),
  );
}
