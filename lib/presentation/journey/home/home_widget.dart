import 'package:base_project/presentation/journey/home/home_bloc/home_bloc.dart';
import 'package:base_project/presentation/journey/home/home_bloc/home_event.dart';
import 'package:base_project/presentation/journey/home/home_bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget{

  const MyHomePage({Key?key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Bloc"),
      ),
      body: Center(
        // Center is a layout widgets. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Nhấn để thực hiện phép tính',
            ),
            BlocBuilder<HomeBloc,HomeState>(
              builder: (context,state) {
                if (state is HomeInitState) {
                  return Text(
                    state.number,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4,
                  );
                } else if (state is HomeSuccessState) {
                  return Text(
                    state.number,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4,
                  );
                }
                else {
                  return const SizedBox();
                }
              }
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              context.read<HomeBloc>().add(HomeAddNumberEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 4,),
          FloatingActionButton(
            onPressed: (){
              context.read<HomeBloc>().add(HomeSubtractEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
