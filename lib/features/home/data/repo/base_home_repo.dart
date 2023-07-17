import 'package:dartz/dartz.dart';
import 'package:task_app/features/home/data/model/help_model/HelpModel.dart';
import 'package:task_app/features/home/data/model/product_model.dart';
import '../../../../core/error/errors.dart';

abstract class BaseHomeRepo{
  Future<Either<Failure,ProductModel>> getProductData();
  Future<Either<Failure,HelpModel>> getHelpData();
}