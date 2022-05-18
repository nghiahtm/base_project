import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable{

}

class HomeInitEvent extends HomeEvent {
  final String? number;
  HomeInitEvent({this.number});
  @override
  // TODO: implement props
  List<Object?> get props => [number];
}

class HomeAddNumberEvent extends HomeEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class HomeSubtractEvent extends HomeEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class HomeLoadingEvent extends HomeEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeSuccessEvent extends HomeEvent {
  final String?number;

  HomeSuccessEvent({this.number});

  @override
  // TODO: implement props
  List<Object?> get props => [number];
}

class HomeErrorEvent extends HomeEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}