abstract class Exception {
  final String message;

  Exception({required this.message});
}

class SignInException extends Exception {
  SignInException({required super.message});
}

class AuthenticationException extends Exception {
  AuthenticationException({required super.message});
}
