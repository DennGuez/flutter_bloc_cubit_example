/*

COUNTER PAGE: responsible for providing CounterCubit to CounterView (UI)

- use BlocProvider

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_state_cubit.dart';
import 'package:flutter_bloc_example/counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override 
  Widget build(BuildContext context) {
    // bloc provider
    return BlocProvider(
      create: (context) => CounterStateCubit(0),
      // BLocListener to listen to state changes
      child: BlocListener<CounterStateCubit, int>(
        listener: (context, state) {
          // show pop up box ir reaches 10
          if (state == 10) {
            showDialog(
              context: context, 
              builder: (context) => const AlertDialog(
                content: Text('10 reached!'),
              )
            );
          }
        },
        child: const CounterView(),
      ),
    );
  }
}