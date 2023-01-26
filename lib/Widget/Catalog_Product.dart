import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_firebase/Controller/Cart_controller.dart';
import 'package:project_firebase/Model/product_model.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
      itemCount: Product.Products.length,
        itemBuilder: (BuildContext context, int index) {
        return CatalogProductCard(index: index);
        }));
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProductCard({
    Key? key,
    required this.index,
})  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              Product.Products[index].imageUrl,
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
              child: Text(
                  Product.Products[index].name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                ),
              ),
          ),
          Expanded(
              child: Text('${Product.Products[index].price}')
          ),
          IconButton(onPressed: (){
            cartController.addProduct(Product.Products[index]);
          },
            icon: Icon(
            Icons.add_circle
          ),
          ),
        ],
      ),
    );
  }
}
