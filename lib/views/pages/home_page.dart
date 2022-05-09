import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_online/controllers/products_contoller.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Obx(() {
          return ListView.builder(
            itemCount: productController.product.length,
            itemBuilder: (context, index) => Container(
              height: 100,
              width: 100,
              color: Colors.red,
              margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Text1'),
                        Text('Text1'),
                        Text('Text1'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
