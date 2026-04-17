import 'package:bloc/bloc.dart';
import 'package:testapp/bloc_state_management/bloc_explore/bloc/counter/counter_event.dart';
import 'package:testapp/bloc_state_management/bloc_explore/bloc/counter/counter_state.dart';


class CounterBloc extends Bloc<CounterEvent , CounterState> {
  CounterBloc() :super(CounterState()){
    on<IncrementCounter>(_increment);
  }

  void _increment(IncrementCounter event , Emitter<CounterState> emit){

  }
}