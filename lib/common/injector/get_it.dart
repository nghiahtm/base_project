//Triển khai các dependency
import 'package:base_project/common/config/firebase_config.dart';
import 'package:base_project/presentation/journey/home/home_bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

class Injector{
  static final GetIt getIt = GetIt.instance;

  static void setUp(){
    _common();
    _repository();
    _bloc();
    _useCase();
  }

  static void _common(){

  }

  static void _repository(){

  }

  static void _bloc(){
    getIt.registerFactory<HomeBloc>((() => HomeBloc()));
  }

  static void _useCase(){
    getIt.registerSingleton<FirebaseConfig>(FirebaseConfig());
  }
}