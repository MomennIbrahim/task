import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/login/data/model/user_data.dart';
import 'package:task_app/features/login/data/repo/base_login_repo.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(this.baseLoginRepo) : super(VerifyInitial());

  final BaseLoginRepo baseLoginRepo;

  Future<void> postUserData({required String code})async {

    emit(VerifyLoading());

    var result =await baseLoginRepo.postUserData(code: code, phone: '01211814372');

    result.fold((failure) {
      emit(VerifyFailure(failure.errMessage));
    }, (userData) {
      emit(VerifySuccess(userData));
    });
  }
}
