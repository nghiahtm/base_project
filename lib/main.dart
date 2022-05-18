import 'package:base_project/common/bloc_observer/observer.dart';
import 'package:base_project/presentation/my_app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: Observer(),
  );
}