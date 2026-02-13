import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/features/gold/data/repo/gold_repo.dart';
import 'package:workshop/features/gold/presentation/cubit/gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit(this.goldRepo) : super(GoldInitilState());
  final GoldRepo goldRepo;
  Future<void> getGold() async {
    emit(GoldLOdingState());
    final res = await goldRepo.getGold();
    res.fold(
      (error) {
        emit(GoldErrorState(errorMsg: error));
      },
      (goldmodel) {
        emit(GoldSucessState(sucessMsg: goldmodel));
      },
    );
  }
}
