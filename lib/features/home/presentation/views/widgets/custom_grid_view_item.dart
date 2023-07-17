import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/widgets/custom_error_widget.dart';
import 'package:task_app/core/widgets/custom_loading_widget.dart';
import 'package:task_app/features/home/presentation/controller/home_cubit/home_cubit.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/styles.dart';

class CustomGridViewItem extends StatelessWidget {
  const CustomGridViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is HomeSuccessState) {
          return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kDetailsView);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 142.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(
                                      state.productModel.products![index].image!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9.0),
                            child: Text(
                              state.productModel.products![index].name!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                              Styles.textStyle18.copyWith(color: kPrimaryColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9.0),
                            child: Text(
                              state.productModel.products![index].type!,
                              style: Styles.textStyle14
                                  .copyWith(color: const Color(0xff464646)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9.0, vertical: 20.6),
                            child: Text('${state.productModel.products![index].price!} L.E',
                                style: Styles.textStyle10
                                    .copyWith(color: const Color(0xff464646))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue[600]!,
                                  Colors.blue.withOpacity(.9),
                                  Colors.blue.withOpacity(.7),
                                  Colors.blue.withOpacity(.5),
                                  Colors.blue.withOpacity(.4),
                                ]),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 22.5,
                  ),
                )
              ],
            ),
          ),
        );
        }else if(state is HomeFailureState){

          return CustomErrorWidget(errMessage: state.errMessage);

        }else{

          return const CustomLoadingWidget();

        }
    },
    );
  }
}
