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
        counter: 10,
        isWorking: true,
        accion: 'OnGetCounter'));

    
    String error = '';

    emit(state.copyWith(
        isWorking: false,
        error: error,
        lstCarritos: lstCarritos,
        accion: Environment.blocOnObtieneCarritos));
  }




}
