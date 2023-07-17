part of 'verify_cubit.dart';

@immutable
abstract class VerifyState {}

class VerifyInitial extends VerifyState {}

class VerifySuccess extends VerifyState {
  final UserData userData;

  VerifySuccess(this.userData);
}
class VerifyFailure extends VerifyState {
  final String errMessage;

  VerifyFailure(this.errMessage);
}
class VerifyLoading extends VerifyState {}
