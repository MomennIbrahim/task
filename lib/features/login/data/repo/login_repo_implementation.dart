import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/errors.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/features/login/data/model/user_data.dart';
import 'package:task_app/features/login/data/model/user_model.dart';
import 'package:task_app/features/login/data/repo/base_login_repo.dart';

class LoginRepoImplementation implements BaseLoginRepo {
  final ApiService apiService;

  LoginRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, UserModel>> postUserModel({
    required String name,
    required String phone,
  }) async {
    try {
      var data = await apiService.postData(
          endPoint: 'api/verifyPhone?name=$name&phone=$phone');
      UserModel userModel = UserModel.fromJson(data.data);
      return right(userModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserData>> postUserData({required String code, required String phone}) async{

    try {
      var data = await apiService.postData(
          endPoint: 'api/verifyPhone?name=6523&phone=01211814372');
      UserData userData = UserData.fromJson(data.data);
      return right(userData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
