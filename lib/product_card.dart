import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
         color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleLarge,),
          const SizedBox(height: 5,),
          Text('\$$price', style: Theme.of(context).textTheme.bodySmall,),
          const SizedBox(height: 5,),
          Center(
            child: Image(image: AssetImage(image),
            height: 175,
            ),
          ),
      
        ],
      ),
    );
  }
}