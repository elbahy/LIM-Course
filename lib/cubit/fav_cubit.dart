import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/cubit/fav_state.dart';
import 'package:lim_course/models/shop_item_model.dart';

class FavCubit extends Cubit<FavStates> {
  FavCubit() : super(FavInitState());

  void favActive(int index) {
    items[index].fav = !items[index].fav;
    emit(FavChangeState());
  }
}
