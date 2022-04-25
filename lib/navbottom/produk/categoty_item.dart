import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/produk/detail_produk.dart';

class CategoryItem extends StatelessWidget {
  final String tittle;
  final Color color;
  final String image;

  CategoryItem(this.tittle, this.image, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(image),
        ),
        Text(tittle),
        const Text("Rp. 10.000"),
        TextButton.icon(onPressed: () {
          Navigator.pushReplacement(context, 
          MaterialPageRoute(builder: (context){
          return const DetailProduk();
          }));
        }, 
        icon: const Icon(Icons.shopping_cart), 
        label: const Text("Beli"))
      ],
    );
  }
}