part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeSuccessState extends HomeState {
  final ProductModel productModel;

  HomeSuccessState(this.productModel);
}
class HomeFailureState extends HomeState {
  final String errMessage;

  HomeFailureState(this.errMessage);
}
class HomeLoadingState extends HomeState {}
