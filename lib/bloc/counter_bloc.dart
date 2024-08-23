import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';

// class CounterIncremented {}

// class CounterBloc extends Bloc<CounterIncremented, int> {
//   CounterBloc() : super(0) {
//     on<CounterIncremented>((event, emit) {
//       emit(state + 1);
//     });
//   }
// }
//or


// we can use a seperate file for below 3 class and use it using part and part of.
// sealed class CounterEvent {}

// final class CounterIncremented extends CounterEvent {}

// final class CounterDecremented extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      if (state ==0) {
        return;
      }
      emit(state - 1);
    });
  }
}
