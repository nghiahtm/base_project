import 'package:base_project/presentation/journey/home/home_bloc/home_event.dart';
import 'package:base_project/presentation/journey/home/home_bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  static int _value = 0;
  HomeBloc() : super(HomeInitState(number: _value.toString())){
    print(state.runtimeType);
    on<HomeAddNumberEvent>(_onAdd);
    on<HomeSubtractEvent>(_onSubtract);
  }

  void _onAdd(HomeAddNumberEvent event,Emitter<HomeState> emit){
    int number = ++_value;
      emit(HomeSuccessState(number: number.toString()));
  }

  void _onSubtract(HomeSubtractEvent event,Emitter<HomeState> emit){
    int number = --_value;
    emit(HomeSuccessState(number: number.toString()));
  }
}