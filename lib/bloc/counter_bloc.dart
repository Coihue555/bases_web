import 'package:bases_web/models/counter_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<OnGetCounter>(_onGetCounter);
    on<OnIncrement>(_onIncrement);
    on<OnDecrement>(_onDecrement);
  }


  Future<void> _onGetCounter(OnGetCounter event, Emitter emit) async {
    emit(state.copyWith(
        error: '',
        counter: CounterModel(counter: 10),
        isWorking: true,
        accion: 'OnGetCounter'));

    String error = '';
    

    emit(state.copyWith(
        isWorking: false,
        error: error,
        accion: 'OnGetCounter'));
  }

  Future<void> _onIncrement(OnIncrement event, Emitter emit) async {
    emit(state.copyWith(
        error: '',
        counter: CounterModel(counter: 10),
        isWorking: true,
        accion: 'OnIncrement'));

    int contador = state.counter.counter+1;
    String error = '';

    

    emit(state.copyWith(
        isWorking: false,
        error: error,
        counter: CounterModel(counter: contador) ,
        accion: 'OnIncrement'));

    
  }

  Future<void> _onDecrement(OnDecrement event, Emitter emit) async {
    emit(state.copyWith(
        error: '',
        counter: CounterModel(counter: 10),
        isWorking: true,
        accion: 'OnDecrement'));

    int contador = state.counter.counter-1;
    String error = '';

    

    emit(state.copyWith(
        isWorking: false,
        error: error,
        counter: CounterModel(counter: contador) ,
        accion: 'OnDecrement'));
  }
    
  




}
