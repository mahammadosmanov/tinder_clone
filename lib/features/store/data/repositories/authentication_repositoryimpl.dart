import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tinder_clone/core/error/failure/failure.dart';
import 'package:tinder_clone/core/helper/locator.dart';
import 'package:tinder_clone/features/store/data/datasources/authentication_datasource.dart';
import 'package:tinder_clone/features/store/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationDatasource _authenticationDatasource =
      locator.get<AuthenticationDatasource>();

  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    try {
      final UserCredential userCredential =
          await _authenticationDatasource.signInWithGoogle();
      return Right(userCredential);
    } on Exception catch (e) {
      return Left(AuthenticationFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      final bool isSignedOut =
          await _authenticationDatasource.signOutFromGoogle();
      return Right(isSignedOut);
    } on Exception catch (e) {
      return Left(AuthenticationFailure(message: e.toString()));
    }
  }
}
