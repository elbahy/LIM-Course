import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitState());
  int x = 0;
  void plus() {
    x++;
    emit(CounterPlusState());
  }

  void minus() {
    x--;
    emit(counterMinusState());
  }

  void reset() {
    x = 0;
    emit(counterResetState());
  }
}
