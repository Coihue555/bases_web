part of 'counter_bloc.dart';

@immutable
class CounterState {
  final CounterModel counter;
  final String error;
  final String accion;
  final bool isWorking;

  CounterState({
      CounterModel? counter,
      this.error = '',
      this.accion = '',
      this.isWorking = false,
    }): counter = counter ?? CounterModel(counter: 10);

  CounterState copyWith({
    final CounterModel? counter,
    final String? error,
    final String? accion,
    final bool? isWorking,
  }) => 
      CounterState(
        isWorking: isWorkin ?? this.isWorking,
        this.error = '',
      this.accion = '',
      this.isWorking = false,
  )

}
