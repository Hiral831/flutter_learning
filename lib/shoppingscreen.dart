import 'package:flutter/material.dart';
import 'package:futterdayone/model/Products.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:futterdayone/productTile.dart';

import 'package:futterdayone/controller/productcontroller.dart';
import 'package:get/instance_manager.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Shoppingscreen extends StatefulWidget {
  const Shoppingscreen({Key? key}) : super(key: key);

  @override
  State<Shoppingscreen> createState() => _ShoppingscreenState();
}

class _ShoppingscreenState extends State<Shoppingscreen> {
  ProdController prodController = Get.put(ProdController());


  // List<Products> productList = [];
  // Future<List<Products>> getProductApi() async{
  //   final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
  //   final products = productsFromJson(jsonString);
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,

      body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.all(9),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'ShopX',
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontSize: 32,
                  fontWeight: FontWeight.w900),
            ),
          ),
          IconButton(
              icon: Icon(Icons.view_list_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
        ],
      ),
    ),

            Expanded(
              child: Obx(
              () {
                if (prodController.isLoading.value)
                  return  Center(child: CircularProgressIndicator());
                  else
                    return GridView.builder(
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                            itemCount:prodController.prodList.length,
                            itemBuilder: (BuildContext ctx, index) {
                            return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                            child: ProductTile(prodController.prodList[index]),
                            );
                            });
                                      }
              ),
            ),




    ]
    )
    );
  }
}
