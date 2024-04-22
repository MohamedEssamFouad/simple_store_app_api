import 'dart:convert';

import 'package:http/http.dart'as http;

import '../Helper/Api.dart';
import '../models/product_model.dart';

class GET_all_product{
  Future<List<product_model>>get_All_product()async{


    List<dynamic> data=await Api().get(url: 'https://fakestoreapi.com/products');




  List<product_model>productList=[];
  for(int i=0;i<data.length;i++){
    productList.add(


     product_model.fromJson( data[i])  ,


    );
}
   return productList;
  }
}