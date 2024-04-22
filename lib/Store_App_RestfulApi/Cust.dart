import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Services/up_page.dart';
import 'models/product_model.dart';

class Cust extends StatelessWidget {
   Cust({Key? key, required this.product}) : super(key: key);
product_model product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return up_page();},));

      },
      child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 130,
              width: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0,
                      offset: Offset(10,10)
                  ),
                ],
              ),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${product.title}',
                        style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(

                        children: [
                          Text(
                            '\$ ${product.price.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                            ),

                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(

                right: 32,
                bottom: 85,
                child: Image.network(product.image,height: 100,width: 100,))
          ],
        ),
    );
    }
  }

