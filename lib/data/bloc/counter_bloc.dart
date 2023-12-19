import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

// 이벤트 별 동작 정의
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>(_handleIncrementEvent);
    on<DecrementEvent>(_handleDecrementEvent);
  }

  void _handleIncrementEvent(
    IncrementEvent event,
    Emitter<CounterState> emit,
  ) {
    print('IncrementEvent 발생');
    emit(state.copyWith(count: state.count + 1));
  }

  void _handleDecrementEvent(
    DecrementEvent event,
    Emitter<CounterState> emit,
  ) {
    print('DecrementEvent 발생');
    emit(state.copyWith(count: state.count - 1));
  }
}
