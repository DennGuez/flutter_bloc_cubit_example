/*

COUNTER VIEW: responsible for rendering the UI

- use BlocBuilder

 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_state_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterStateCubit, int>(
      // BODY with BlocBuilder
        builder: (context, state) {
          return Center(child: Text(
            state.toString(),
            style: const TextStyle(fontSize: 50), 
          ));
        },
      ),
      // BUTTONS
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // increment button
          FloatingActionButton(
            onPressed: () => context.read<CounterStateCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 20),
          // decrement button
          FloatingActionButton(
            onPressed: () {
              if (context.read<CounterStateCubit>().state >= 1) {
                return context.read<CounterStateCubit>().decrement();
              }},
            child: const Icon(Icons.remove),
          )
        ]
      )
    );
  }
}