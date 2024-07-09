import 'package:flutter/material.dart';
import 'package:freshandfloralapp/productpage.dart';
import 'package:freshandfloralapp/shoppingcart.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCatalog extends StatelessWidget {
  final CartController controller = Get.find();

  CartCatalog({super.key});

  get isEmpty => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemCount: controller.product.length,
        itemBuilder: (context, index) {
          return CartProduct(
            controller: controller,
            product: controller.product.keys.toList()[index],
            quantity: controller.product.values.toList()[index],
            index: index,
          );
        },
      ),
    );
  }
}

class CartProduct extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  const CartProduct(
      {super.key,
      required this.controller,
      required this.product,
      required this.quantity,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.imageasset),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(right: 70),
                child: Row(
                  children: [
                    Text(
                      "$quantity x ",
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      product.price.toString(),
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xff80bbda),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
