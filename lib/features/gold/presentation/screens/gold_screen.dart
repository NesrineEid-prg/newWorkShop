import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/core/constants/app_color.dart';
import 'package:workshop/core/constants/app_images.dart';
import 'package:workshop/features/gold/data/repo/gold_repo.dart';
import 'package:workshop/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:workshop/features/gold/presentation/cubit/gold_state.dart';
import 'package:workshop/features/gold/presentation/screens/widgets/custum_text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GoldCubit(GoldRepo())..getGold();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Gold',
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            print(state.runtimeType);
            if (state is GoldLOdingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GoldErrorState) {
              return Center(child: Text('something wrong'));
            } else if (state is GoldSucessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.imgGold, width: 220, height: 220),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustumText(
                        20,
                        FontWeight.bold,
                        txt: state.sucessMsg.price?.toString() ?? "0",
                        txtCol: AppColors.goldColor,
                      ),
                      SizedBox(width: 5),
                      CustumText(
                        20,
                        FontWeight.bold,
                        txt: '\$',
                        txtCol: AppColors.goldColor,
                      ),
                    ],
                  ),
                ],
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
