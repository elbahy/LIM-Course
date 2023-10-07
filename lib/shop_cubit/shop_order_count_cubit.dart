import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/shop_cubit/shop_order_count_state.dart';

class OrderCounterCubit extends Cubit<OrderCountStates> {
  OrderCounterCubit() : super(CounterInit());

  int x = 0;

  void increment() {
    x++;
    emit(CounterIncrement());
  }

  void decrement() {
    x--;
    (x < 0) ? x = 0 : null;

    emit(CounterDecrement());
  }

  void resetC() {
    x++;
    emit(CounterReset());
  }
}
