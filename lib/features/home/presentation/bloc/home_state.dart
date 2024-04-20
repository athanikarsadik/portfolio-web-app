part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {
  final int curPageIndex;

  HomeInitialState({required this.curPageIndex});
}
