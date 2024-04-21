import 'package:get_it/get_it.dart';
import 'package:portfolio_webapp/features/home/presentation/bloc/home_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  serviceLocator.registerLazySingleton(() => HomeBloc(index: 0));
}

String calculateAge() {
  DateTime birthDate =
      DateTime(2002, 12, 2); // Replace with your actual birthdate
  Duration ageDuration = DateTime.now().difference(birthDate);

  int years = ageDuration.inDays ~/ 365;
  int months = (ageDuration.inDays % 365) ~/ 30;
  int days = (ageDuration.inDays % 365) % 30;
  int hours = ageDuration.inHours % 24;

  // Return the calculated age in the format: years.months.days.hours
  return "$years:$months:$days:$hours";
}
