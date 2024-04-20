import 'package:get_it/get_it.dart';
import 'package:portfolio_webapp/features/home/presentation/bloc/home_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  serviceLocator.registerLazySingleton(() => HomeBloc(index: 0));
}
