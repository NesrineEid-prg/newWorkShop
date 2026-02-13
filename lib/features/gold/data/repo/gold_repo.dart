import 'package:dartz/dartz.dart';
import 'package:workshop/core/networking/api_constant.dart';
import 'package:workshop/core/networking/dio_helper.dart';
import 'package:workshop/features/gold/data/model/gold_model.dart';

class GoldRepo {
 Future< Either<String ,GoldModel>>getGold()async{
  try{
   final res = await DioHelper.getDta(endPoint: ApiConstant.goldEndPoint);
  return right(  GoldModel.fromJson( res.data));
  } catch(e){
    return left(e.toString());
   }
  }
}