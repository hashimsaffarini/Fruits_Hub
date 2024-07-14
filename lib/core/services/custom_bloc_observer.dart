import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      log('${bloc.runtimeType} $transition');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      log('${bloc.runtimeType} $change');
    }
  }
}
