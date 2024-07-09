import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:freshandfloralapp/about.dart';
import 'package:freshandfloralapp/contact.dart';
import 'package:freshandfloralapp/homepage.dart';

import 'package:freshandfloralapp/shop.dart';
import 'package:freshandfloralapp/login.dart';

import 'package:freshandfloralapp/wishlist.dart';
import 'package:get/get.dart';

import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class AntiDandruffShampooScreen extends StatefulWidget {
  const AntiDandruffShampooScreen({super.key});

  @override
  State<AntiDandruffShampooScreen> createState() =>
      _AntiDandruffShampooScreenState();
}

class _AntiDandruffShampooScreenState extends State<AntiDandruffShampooScreen> {
  CarouselController buttonCarouselController = CarouselController();

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Get.to(const HomePageScreen());
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
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
          title: Container(
            margin: const EdgeInsets.only(top: 20),
            height: 130,
            width: 130,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/IMG_0014.PNG"),
              ),
            ),
          )),
      body: ListView(
        children: [
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
                width: 320,
              ),
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
              IconButton(
                onPressed: () {
                  Get.to(SHOPSCREEN());
                },
                icon: const Icon(Icons.window_sharp, size: 16),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                width: 400,
                margin: const EdgeInsets.all(6.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/antidand2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 335, right: 7),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100],
                          shape: BoxShape.circle),
                      child: const Center(
                        child: Text(
                          "-30%",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //2nd Image of Slider
              Container(
                width: 400,
                margin: const EdgeInsets.all(6.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/antidandruffshapoo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 335, right: 7),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100],
                          shape: BoxShape.circle),
                      child: const Center(
                        child: Text(
                          "-30%",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 400,
              enlargeCenterPage: true,
              autoPlay: true,
              // aspectRatio: 6 / 6,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Anti Dandruff Shampoo",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Rs 1,125.00",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.blue[200],
                    fontWeight: FontWeight.w500,
                    fontSize: 19),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "With our Anti-Dandruff Shampoo, feel confident without worrying about flakes. This revitalising shampoo, designed specifically to address resistant dandruff, leaves your scalp feeling clean and nourished while removing flakes. Rich in effective anti-dandruff ingredients, it helps your hair regain its natural equilibrium, making it appear healthier and less embarrassing due to dandruff. With our potent Anti-Dandruff Shampoo, wave goodbye to flakes and hello to a revitalised, dandruff-free scalp.",
              style: TextStyle( 
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
