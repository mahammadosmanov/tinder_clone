import 'package:get_it/get_it.dart';
import 'package:tinder_clone/features/store/data/datasources/authentication_datasource.dart';
import 'package:tinder_clone/features/store/data/repositories/authentication_repositoryimpl.dart';
import 'package:tinder_clone/features/store/domain/repositories/authentication_repository.dart';

final GetIt locator = GetIt.instance;

void setupGetIt() {
  locator.registerSingleton<AuthenticationDatasource>(
      AuthenticationDatasourceImpl());
  locator.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl());
}
