
 /*
 
 CUBIT: Simpliefied version of the BLoC for easy state management

*/

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterStateCubit extends Cubit<int> {
  // constructor: get initial state
  CounterStateCubit(super.initialState);

  // increment the state
  void increment() => emit(state + 1);

  // decrement the state
  void decrement() => emit(state - 1);

  // on change state => do something
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}