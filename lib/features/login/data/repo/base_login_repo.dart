import 'package:dartz/dartz.dart';
import 'package:task_app/core/error/errors.dart';
import 'package:task_app/features/login/data/model/user_data.dart';
import '../model/user_model.dart';

abstract class BaseLoginRepo{

  Future<Either<Failure,UserModel>> postUserModel({required String name , required String phone});
  Future<Either<Failure,UserData>> postUserData({required String code , required String phone});
}