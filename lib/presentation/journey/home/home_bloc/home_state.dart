import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable{

}

class HomeInitState extends HomeState {
  final String number;

  HomeInitState({required this.number});
  @override
  // TODO: implement props
  List<Object?> get props => [number];
}

class HomeLoadingState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeSuccessState extends HomeState {
  final String number;

  HomeSuccessState({required this.number});

  @override
  // TODO: implement props
  List<Object?> get props => [number];
}

class HomeErrorState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}