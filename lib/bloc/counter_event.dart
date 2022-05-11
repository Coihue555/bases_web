part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class OnGetCounter extends CounterEvent{
  OnGetCounter();
}

class OnIncrement extends CounterEvent{
  OnIncrement();
}

class OnDecrement extends CounterEvent{
  OnDecrement();
}