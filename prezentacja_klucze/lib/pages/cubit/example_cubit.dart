import 'dart:async';

import 'package:bloc/bloc.dart';

class ExampleCubit extends Cubit<int> {
  ExampleCubit() : super(0) {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(state + 1);
    });
  }

  late Timer timer;

  @override
  Future<void> close() {
    timer.cancel();
    return super.close();
  }
}
