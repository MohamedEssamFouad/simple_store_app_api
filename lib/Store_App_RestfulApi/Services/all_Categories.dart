
import 'package:http/http.dart'as http;

import '../Helper/Api.dart';
class get_cat{
  Future<List<dynamic>>getAllCat()async{
    List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products/categories');


      return data;


  }

  
}