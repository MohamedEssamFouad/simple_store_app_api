

import 'package:http/http.dart'as http;

import '../Helper/Api.dart';
import '../models/product_model.dart';
class cat_services{
  Future<List<product_model>>get_cat_prod({required String catName})async{
    List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products/category/${catName}');



      List<product_model>products_CA=[];
      for(int i =0;i<data.length;i++){
        products_CA.add(

          product_model.fromJson(data[i]),
        );
      } return products_CA;


  }
}