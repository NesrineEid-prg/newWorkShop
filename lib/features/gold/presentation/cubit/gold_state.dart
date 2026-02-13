import 'package:workshop/features/gold/data/model/gold_model.dart';

abstract class GoldState {

}
class GoldInitilState extends GoldState{

}
class GoldErrorState extends GoldState{
  final String errorMsg;

  GoldErrorState({required this.errorMsg});
  
}



class GoldSucessState extends GoldState{
  final GoldModel sucessMsg;

  GoldSucessState({required this.sucessMsg});
}


class GoldLOdingState extends GoldState{
  
}