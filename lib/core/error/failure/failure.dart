abstract class Failure {
  final String message;

  Failure({required this.message});
}

class AuthenticationFailure extends Failure {
  AuthenticationFailure({required super.message});
}
