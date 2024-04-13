part of 'login_bloc.dart';



@immutable
class LoginState {
  ScreenStatus? status;

  ResponseEntity? responseEntity;
  Failures? failures;

  LoginState({this.status, this.responseEntity, this.failures});

  LoginState copyWith({
    ScreenStatus? status,
    ResponseEntity? responseEntity,
    Failures? failures,
  }) {
    return LoginState(
        status: status ?? this.status,
        failures: failures ?? this.failures,
        responseEntity: responseEntity ?? this.responseEntity);
  }
}

class LoginInitialState extends LoginState {
  LoginInitialState() : super(status: ScreenStatus.init);
}
