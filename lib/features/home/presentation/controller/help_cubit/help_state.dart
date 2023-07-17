part of 'help_cubit.dart';

@immutable
abstract class HelpState {}

class HelpInitial extends HelpState {}

class HelpSuccessState extends HelpState {
  final HelpModel helpModel;

  HelpSuccessState(this.helpModel);
}
class HelpFailureState extends HelpState {
  final String errMessage;

  HelpFailureState(this.errMessage);
}
class HelpLoadingState extends HelpState {}
