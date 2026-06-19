import 'package:flutter/material.dart';
import 'package:pertemuan10_2306044/models/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  //membuat variabel untuk menampilkan data produk
  //yg di pilih
  final ProductModel product;
  const ProductDetailPage({super.key, required this.product});

  //constructor
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Produk")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: .bold),
            ),
            SizedBox(height: 10),
            Text("Rp ${product.price}"),
            const SizedBox(height: 10),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
