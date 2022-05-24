import 'package:equatable/equatable.dart';

abstract class SnackbarState extends Equatable{}

class SnackbarInitState extends SnackbarState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SnackbarErrorState extends SnackbarState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SnackbarLoadedState extends SnackbarState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}