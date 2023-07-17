import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/model/help_model/HelpModel.dart';

import '../../../data/repo/base_home_repo.dart';

part 'help_state.dart';

class HelpCubit extends Cubit<HelpState> {
  HelpCubit(this.baseHomeRepo) : super(HelpInitial());

  BaseHomeRepo baseHomeRepo;

  Future<void> getHelpData()async{

    emit(HelpLoadingState());

    var result = await baseHomeRepo.getHelpData();

    result.fold((failure){
      emit(HelpFailureState(failure.errMessage));
    }, (helpModel){
      emit(HelpSuccessState(helpModel));
    });
  }
}
