part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class AppBarClickEvent extends HomeEvent {
  final int index;

  AppBarClickEvent({required this.index});
}
