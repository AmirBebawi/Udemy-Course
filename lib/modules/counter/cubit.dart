import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemycourse/modules/counter/states.dart';

class CounterCubit extends Cubit<CounterStates>
{
  int counter = 0 ;
  CounterCubit() : super(CounterInitalState());
  static CounterCubit get(context) => BlocProvider.of(context);
  void minus() {
    counter--;
    emit(CounterMinusState(counter));
  }
  void plus() {
    counter++;
    emit(    CounterPlusState(counter  ));
  }
}


