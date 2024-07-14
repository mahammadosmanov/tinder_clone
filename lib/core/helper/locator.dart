import 'package:get_it/get_it.dart';
import 'package:tinder_clone/features/store/data/datasources/local_datasource.dart';
import 'package:tinder_clone/features/store/data/datasources/store_datasource.dart';
import 'package:tinder_clone/features/store/data/repositories/authentication_repositoryimpl.dart';
import 'package:tinder_clone/features/store/data/repositories/product_repositoryimpl.dart';
import 'package:tinder_clone/features/store/domain/repositories/authentication_repository.dart';
import 'package:tinder_clone/features/store/domain/repositories/product_repository.dart';
import 'package:tinder_clone/features/store/presentation/pages/home/home.dart';

final GetIt locator = GetIt.instance;

void setupGetIt() {
  locator.registerSingleton<StoreDataSource>(StoreDataSourceImpl());
  locator.registerSingleton<LocalDataSource>(HiveDataSourceImpl());
  locator.registerSingleton<ProductRepository>(ProductRepositoryImpl());
  locator.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl());
  locator.registerLazySingleton(() => const HomeView());
}
