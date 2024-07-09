import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';

import 'package:freshandfloralapp/about.dart';
import 'package:freshandfloralapp/antiagingserum.dart';
import 'package:freshandfloralapp/antidandruffshapoo.dart';
import 'package:freshandfloralapp/buyantidandruffkit.dart';
import 'package:freshandfloralapp/buyhairgr.dart';
import 'package:freshandfloralapp/buyhrrepairkit.dart';

import 'package:freshandfloralapp/contact.dart';
import 'package:freshandfloralapp/hairgrowthshampoo.dart';
import 'package:freshandfloralapp/shop.dart';
import 'package:freshandfloralapp/oils.dart';
import 'package:freshandfloralapp/serums.dart';
import 'package:freshandfloralapp/shampoo.dart';
import 'package:freshandfloralapp/login.dart';

import 'package:freshandfloralapp/wishlist.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<String> items = [
    'Privacy Policy',
    'Refunds and Return Policy',
    'Terms & Condition',
  ];
  String? selectedValue;
  var screens = [
    const HomePageScreen(),
    SHOPSCREEN(),
    const AboutScreen(),
    const WishlistScreen(),
  ];
  var currentscreen = 1;
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
          actions: [
            Builder(builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: const Icon(Icons.shopping_cart_outlined),
              );
            })
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
          )),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 2,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  "images/yearendsale.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(
                        const BuyhrgrowthScreen(),
                      );
                    },
                    child: Container(
                      height: 400,
                      width: 450,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/hairgrowthkit.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 370,
                    child: Container(
                      height: 250,
                      width: 350,
                      color: Colors.white,
                      child: const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "HAIR GROWTH KIT",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              Text(
                                "Our Hair Oil guarantees that your hair feels extraordinarily healthy and nourished while also aiding in the stimulation of hair growth.Our Hair Shampoo further amplifies the effects of this hair oil.Hair Growth Kit quantity ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.6,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 250,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const HairrepairkitScreen());
                    },
                    child: Container(
                      height: 400,
                      width: 450,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/hairrepairkit.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 370,
                    child: Container(
                      height: 250,
                      width: 350,
                      color: Colors.white,
                      child: const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "HAIR REPAIR KIT",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              Text(
                                "Our Hair Repair Kit comes with our Hair Repair shampoo and oil, which are formulated with essential oils of tea tree and clary sage. It is the most effective way to restore lifeless and damaged hair. The oil rich in nutrients helps to restore and nourish fragile hair.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.6,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 250,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const AntidandruffScreen());
                    },
                    child: Container(
                      height: 400,
                      width: 450,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/antidandruff.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 370,
                    child: Container(
                      height: 250,
                      width: 350,
                      color: Colors.white,
                      child: const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ANTI DANDRUFF KIT",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              Text(
                                "With the aid of this potent dual kit made of organic components helps remove dead skin, dandruff, and strengthen your hair while adding shine and avoiding breakage, frizz, and split ends, you can boost your confidence. It consists of Tea tree and Ginger essential oils combine to create a nourishing dandruff control hair oil.Anti Dandruff Kit quantity",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.6,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 250,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            height: 0.3,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Fresh & Floral",
              style: GoogleFonts.satisfy(
                  textStyle: const TextStyle(fontSize: 22, color: Colors.blue)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "PROFESSIONAL",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontSize: 23, letterSpacing: 1)),
            ),
          ),
          Center(
            child: Text(
              "SKIN CARE",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300)),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "Experience the Organic Difference - Gentle,",
              style: TextStyle(
                  color: Colors.black54, fontSize: 15.2, letterSpacing: 0.4),
            ),
          ),
          const Center(
            child: Text(
              " Effective, Beautiful.",
              style: TextStyle(
                  color: Colors.black54, fontSize: 15.2, letterSpacing: 0.4),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(SHOPSCREEN());
              },
              child: Text(
                "CONTINUE SHOPPING",
                style: GoogleFonts.nunitoSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 1.5,
              width: 143,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const AntiDandruffShampooScreen());
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/antidandruffshapoo.jpg"),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 7),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Text(
                                    "-32%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, right: 7),
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
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
                            margin: const EdgeInsets.only(top: 38, right: 65),
                            height: 40,
                            width: 45,
                            color: Colors.blue.withOpacity(0.3),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
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
                  const SizedBox(height: 10),
                  const Text(
                    "Anti Dandruff Shampoo",
                    style:
                        TextStyle(fontSize: 12.2, fontWeight: FontWeight.bold),
                  ),
                  const Center(
                    child: Text(
                      "Rs 1,125.00",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const HairgrowthshampooScreen());
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/hairgrowthshampoo.jpg"),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 7),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Text(
                                    "-32%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, right: 7),
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
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
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 38, right: 65),
                            height: 40,
                            width: 45,
                            color: Colors.blue[300]?.withOpacity(0.6),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
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
                  const SizedBox(height: 10),
                  const Text(
                    "Hair Growth Shampoo",
                    style:
                        TextStyle(fontSize: 12.2, fontWeight: FontWeight.bold),
                  ),
                  const Center(
                    child: Text(
                      "Rs 1,125.00",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const AntiagingserumScreen());
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/antiaging.jpg"),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 7),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Text(
                                    "-32%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, right: 7),
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
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
                            margin: const EdgeInsets.only(top: 38, right: 65),
                            height: 40,
                            width: 45,
                            color: Colors.blue[300]?.withOpacity(0.6),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
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
                  const SizedBox(height: 10),
                  const Text(
                    "Anti Aging Face Serum",
                    style:
                        TextStyle(fontSize: 12.2, fontWeight: FontWeight.bold),
                  ),
                  const Center(
                    child: Text(
                      "Rs 1,715.00",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 60),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 300),
                child: Text(
                  "CATEGORIES:",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 27,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const ShampooScreen());
                    },
                    child: Container(
                      height: 170,
                      width: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/shampoo's.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: Center(
                        child: Text(
                          "SHAMPOO",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const SerumsScreen());
                    },
                    child: Container(
                      height: 170,
                      width: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/serums.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: Center(
                        child: Text(
                          "SERUMS",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(const OilsScreen());
                },
                child: Container(
                  height: 170,
                  width: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/oils.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Text(
                      "HAIR OILS",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(right: 350),
            child: Image.asset(
              "images/IMG_0014.png",
              height: 100,
              width: 100,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 10,
            ),
            child: const Text(
              "''The Art of Organic Beauty''",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.near_me,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "A PRODUCT BY PREMIER ENTERPRISES",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone_android_sharp,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Phone: +923038181782",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.mail_outline,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Email:chasif78@yahoo.com",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  // margin: const EdgeInsets.only(left: 5),
                  height: 150,
                  width: 200,
                  color: Colors.white,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        "USEFUL LINKS",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: InkWell(
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 0.5,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "All rights reserved © ",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Text(
                "Premier Enterprises",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "2023. ",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 22,
                width: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/visa.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 22,
                width: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/mastercard.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 22,
                width: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/paypal.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 22,
                width: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/AmericanExpress.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 22,
                width: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/maestro.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
