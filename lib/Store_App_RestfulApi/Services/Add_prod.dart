

import '../Helper/Api.dart';
import '../models/product_model.dart';

class Addproduct{


  Future<product_model>add_prod ({ required String ,required String title,required String Price,required String desc,required String image, required String cat}) async{
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