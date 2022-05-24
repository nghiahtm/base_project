import 'package:base_project/presentation/bloc/snackbar_bloc/snackbar_event.dart';
import 'package:base_project/presentation/bloc/snackbar_bloc/snackbar_state.dart';
import 'package:bloc/bloc.dart';

class SnackbarBloc extends Bloc<SnackbarEvent,SnackbarState>{
  SnackbarBloc() : super(SnackbarInitState()){

  }
}