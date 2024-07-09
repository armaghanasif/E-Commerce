import 'package:flutter/material.dart';

import 'package:freshandfloralapp/about.dart';
import 'package:freshandfloralapp/antidandruffshapoo.dart';

import 'package:freshandfloralapp/cartscreen.dart';
import 'package:freshandfloralapp/contact.dart';

import 'package:freshandfloralapp/hairgrowthshampoo.dart';
import 'package:freshandfloralapp/homepage.dart';
import 'package:freshandfloralapp/productpage.dart';
import 'package:freshandfloralapp/login.dart';
import 'package:freshandfloralapp/shoppingcart.dart';
import 'package:freshandfloralapp/wishlist.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class SHOPSCREEN extends StatefulWidget {
  final cartcontroller = Get.put(CartController());
  SHOPSCREEN({super.key});

  @override
  State<SHOPSCREEN> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SHOPSCREEN> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isChecked = false;

  var showcontainer = false;

  double h = 150;

  double w = 500;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      key: _key,
      endDrawer: CartScreen(),
      backgroundColor: Colors.white,
      drawer: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width / 2,
        child: Drawer(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3), blurRadius: 10),
                  ],
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(
                      const HomePageScreen(),
                    );
                  },
                  leading: const Text(
                    "HOME",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3), blurRadius: 10),
                  ],
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(SHOPSCREEN());
                  },
                  leading: const Text(
                    "SHOP",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3), blurRadius: 10),
                  ],
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(const AboutScreen());
                  },
                  leading: const Text(
                    "ABOUT",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3), blurRadius: 10),
                  ],
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(const ContactScreen());
                  },
                  leading: const Text(
                    "CONTACT US",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3), blurRadius: 10),
                  ],
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(const WishlistScreen());
                  },
                  title: const Text(
                    "WISHLIST",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                  leading: const Icon(
                    Icons.favorite_border,
                    size: 18,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3), blurRadius: 10),
                  ],
                ),
                child: ListTile(
                  onTap: () {
                    Get.to(const LoginScreen());
                  },
                  leading: const Text(
                    "LOGIN/REGISTER",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                return _key.currentState?.openEndDrawer();
              },
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
        backgroundColor: Colors.white,
        title: Container(
          margin: const EdgeInsets.only(top: 20),
          height: 130,
          width: 130,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/IMG_0014.PNG"),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            AnimatedContainer(
              height: h,
              width: w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/background.jpeg",
                    ),
                    fit: BoxFit.cover),
              ),
              duration: const Duration(seconds: 1),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Shop",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 35),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          onTap: () {
                            if (h == 150) {
                              setState(() {
                                h = 300;
                                w = 500;
                              });
                            } else {
                              h = 150;
                              w = 500;
                            }
                          },
                          child: Text(
                            "Categories",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (h == 150) {
                            setState(
                              () {
                                h = 300;
                                w = 500;
                              },
                            );
                          } else {
                            setState(() {
                              h = 150;
                              w = 500;
                            });
                          }
                        },
                        icon: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Get.to(const HomePageScreen());
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey[500]),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "/",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Shop",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 230,
                ),
                Text(
                  "Showing 1-12 of 13 results",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey[500]),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 5,
                ),
                itemCount: Product.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ShopProduct(
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopProduct extends StatelessWidget {
  final int index;
  final cartcontroller = Get.put(CartController());
  void tapped(int index) {
    if (index == 0) {
      Get.to(const AntiDandruffShampooScreen());
    }
    if (index == 2) {
      Get.to(const HairgrowthshampooScreen());
    }
  }

  ShopProduct({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => tapped(index),
          child: Container(
            height: 190,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Product.products[index].imageasset),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 7),
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          color: Color(0xff80bbda), shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          Product.products[index].dicount,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, right: 7),
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, right: 140),
                  height: 45,
                  width: 50,
                  color: const Color(0xff80bbda).withOpacity(0.6),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        cartcontroller.addProduct(Product.products[index]);
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          Product.products[index].name,
          style: const TextStyle(fontSize: 12.2, fontWeight: FontWeight.bold),
        ),
        Center(
          child: Text(
            Product.products[index].price.toString(),
            style: const TextStyle(
                color: Color(0xff80bbda), fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
