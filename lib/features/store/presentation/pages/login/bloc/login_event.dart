part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SignUpEvent extends LoginEvent {
  const SignUpEvent();
}
