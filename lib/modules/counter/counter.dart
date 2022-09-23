import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemycourse/modules/counter/cubit.dart';
import 'package:udemycourse/modules/counter/states.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CounterCubit(),
      child: BlocConsumer<CounterCubit , CounterStates>(
        listener: (context, state) {
          if(state is CounterMinusState) {
            // print('Minus State : ${state.counter}');
          }
          if(state is CounterPlusState) {
            // print('Plus State : ${state.counter}');
          }
        },
        builder: (context, state) => Scaffold(
          extendBodyBehindAppBar: true,
          body: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    CounterCubit.get(context).plus();
                  },
                  child: Text(
                    "+",
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20 ,end: 20 ,),
                  child: Text(
                    "${CounterCubit.get(context).counter}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    CounterCubit.get(context).minus();
                  },
                  child: Text(
                    "-",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
