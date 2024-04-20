import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final int index;
  HomeBloc({required this.index})
      : super(HomeInitialState(curPageIndex: index)) {
    on<HomeEvent>((event, emit) {});

    on<AppBarClickEvent>((event, emit) {
      print("hello");
      emit(HomeInitialState(curPageIndex: event.index));
    });
  }
}
