import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_page.dart';
import 'package:flutter_bloc_example/counter_state_cubit.dart';
import 'package:flutter_bloc_example/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    // use bloc provider to provide state CounterCubit to CounterView
    return BlocProvider(
      create: (context) => CounterStateCubit(counter),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}



