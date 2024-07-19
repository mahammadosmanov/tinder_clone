import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tinder_clone/core/error/failure/failure.dart';
import 'package:tinder_clone/core/helper/locator.dart';
import 'package:tinder_clone/features/store/domain/repositories/authentication_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository _authenticationRepository =
      locator.get<AuthenticationRepository>();
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {});
    on<SignUpEvent>((event, emit) {
      _authenticationRepository.signInWithGoogle().then(
        (value) {
          value.fold(
            (l) {
              emit(LoginFailed());
            },
            (r) {
              emit(LoginCompleted());
            },
          );
        },
      );
    });
  }
}
