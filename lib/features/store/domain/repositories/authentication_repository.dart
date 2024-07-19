import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tinder_clone/core/error/failure/failure.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserCredential>> signInWithGoogle();

  Future<Either<Failure, bool>> signOut();
}
