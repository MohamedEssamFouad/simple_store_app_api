import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import 'Cust.dart';
import 'Services/Get_all_product.dart';
import 'models/product_model.dart';
class Home_RestFul extends StatelessWidget {
  const Home_RestFul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       //elevation: 0.0,
       centerTitle: true,
       title: Text(
         'New Trend',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
       ),
       actions: [
         IconButton(onPressed: (){},
             icon: Icon(
               Icons.add,
             ),),
       ],
     ),
      body: Padding(
        padding: EdgeInsets.only(left: 16,right: 16,top: 65),
        child: FutureBuilder<List<product_model>>(
          future: GET_all_product().get_All_product(),
           builder: (context,snapshot) {

             if (snapshot.hasData) {
               List<product_model>products=snapshot.data!;
               return GridView.builder(
                 itemCount: products.length,
                   clipBehavior: Clip.none,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     childAspectRatio: 1.3,
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 100,
                   ),
                   itemBuilder: (context, index) {
                     return Cust(product: products[index] ,);
                   }
               );
             } else {
              return Center(child: CircularProgressIndicator());
             }
           }

    ),

    ),
    );
  }
}
