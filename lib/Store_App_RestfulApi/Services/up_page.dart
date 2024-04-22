import 'package:flutter/material.dart';

import 'Custom_Text_field.dart';
import 'Update-product.dart';
import 'custom_buttom.dart';

class up_page extends StatelessWidget {
  up_page({Key? key}) : super(key: key);
    String? productName,desc,image;
    String? price;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'upadate page',

        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              onChanged: (data){
                productName=data;
              },
            ),
            SizedBox(height: 10,),
            CustomTextField(
              onChanged: (data){
                desc=data;
              },
            ),
            SizedBox(height: 10,),
            CustomTextField(
              onChanged: (data){
                price=data;
              },
            ),
            SizedBox(height: 10,),
            CustomTextField(
              onChanged: (data){
                image=data;
              },
            ),
            SizedBox(height: 20,),
            CustomButon(text: 'send',
              onTap: (){
                Update_prod().upp_prod(

                  title: productName!,
                  Price: price!,
                  desc: desc!,
                  image: image!,
                );

              },

            ),
          ],
        ),
      ),
    );
  }
}
