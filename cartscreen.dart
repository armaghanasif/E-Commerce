import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freshandfloralapp/cartcatalog.dart';
import 'package:freshandfloralapp/shoppingcart.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.find();
  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Drawer(
        shape: InputBorder.none,
        backgroundColor: Colors.white,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width / 2,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text(
                    "Shopping Cart",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[350],
                ),
                CartCatalog(),
                Divider(
                  color: Colors.grey[350],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Subtotal",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Rs ${controller.total}",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 17,
                              color: Color(0xff80bbda),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12, top: 20),
                  height: 40,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.grey[350]?.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "VIEW CART",
                      style: GoogleFonts.poppins(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.w600)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12, top: 10),
                  height: 40,
                  width: 280,
                  decoration: BoxDecoration(
                    color: const Color(0xff80bbda).withOpacity(1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "CHECKOUT",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
