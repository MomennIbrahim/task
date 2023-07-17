import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/login/data/model/user_model.dart';
import 'package:task_app/features/login/data/repo/base_login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.baseLoginRepo) : super(LoginInitial());

  BaseLoginRepo baseLoginRepo;


  Future<void> userLogin({required String name, required String phone,}) async {

    emit(LoginLoadingState());
    var result = await baseLoginRepo.postUserModel(name: name, phone: phone);

    result.fold((failure) {
      emit(LoginFailureState(failure.errMessage));
    }, (userModel) {
      emit(LoginSuccessState(userModel));
    });
  }
}
