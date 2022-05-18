import 'package:base_project/presentation/journey/home/home_bloc/home_bloc.dart';
import 'package:base_project/presentation/journey/home/home_bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'journey/home/home_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeBloc>(
          create: (BuildContext context) {
            return HomeBloc();
          },
          child: const MyHomePage()),
    );
  }
}