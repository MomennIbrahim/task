part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginSuccessState extends LoginState {
  final UserModel userModel;

  LoginSuccessState(this.userModel);
}
class LoginFailureState extends LoginState {
  final String errMessage;

  LoginFailureState(this.errMessage);
}
class LoginLoadingState extends LoginState {}

