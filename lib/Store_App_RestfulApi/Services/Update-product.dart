import '../Helper/Api.dart';
import '../models/product_model.dart';

class Update_prod{
  Future<product_model>upp_prod ({ required String title,required String Price,required String desc,required String image,  String? cat}) async{
    Map<dynamic,dynamic>data
    =await Api().Post(url: 'https://fakestoreapi.com/products',body: {
      'title':title,
      'price':Price,
      'description':desc,
      'image':image,
      'category':cat,

    }


    );
    return product_model.fromJson(data);


  }
}