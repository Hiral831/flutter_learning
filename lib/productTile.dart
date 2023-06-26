import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:futterdayone/model/Products.dart';

class ProductTile extends StatelessWidget {
  final Products product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  // clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
                // Positioned(
                //   right: 0,
                //   child: Obx(() => CircleAvatar(
                //     backgroundColor: Colors.white,
                //     child: IconButton(
                //       icon: product.value
                //           ? Icon(Icons.favorite_rounded)
                //           : Icon(Icons.favorite_border),
                //       onPressed: () {
                //         product.toggle();
                //       },
                //     ),
                //   )),
                // )
              ],
            ),
            SizedBox(height: 4),
            Text(
              product.name,
              maxLines: 1,
              style:
              TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(2),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      size: 2,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            SizedBox(height: 4),
            Text('\$${product.price}',
                style: TextStyle(fontSize: 3, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}