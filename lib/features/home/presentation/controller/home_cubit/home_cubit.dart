import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/model/product_model.dart';
import 'package:task_app/features/home/data/repo/base_home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.baseHomeRepo) : super(HomeInitial());

  BaseHomeRepo baseHomeRepo;

  Future<void> getProductData()async{

    emit(HomeLoadingState());

    var result = await baseHomeRepo.getProductData();

    result.fold((failure){
      emit(HomeFailureState(failure.errMessage));
      print(failure.errMessage.toString());
    }, (productData){
      emit(HomeSuccessState(productData));
    });
  }
}
