import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/errors.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/features/home/data/model/help_model/HelpModel.dart';
import 'package:task_app/features/home/data/model/product_model.dart';
import 'base_home_repo.dart';

class HomeRepoImplement implements BaseHomeRepo{

  ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, ProductModel>> getProductData() async{

    try{
      var data = await apiService.getData(endPoint:'api/getProducts');
      ProductModel productModel = ProductModel.fromJson(data.data);
      return right(productModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, HelpModel>> getHelpData() async{

    try{
      var data = await apiService.getData(endPoint:'api/getHelp');
      HelpModel helpModel = HelpModel.fromJson(data.data);
      return right(helpModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}