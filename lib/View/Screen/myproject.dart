// ignore_for_file: must_be_immutable
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohid_chowdhury_portfolio/View/Screen/home_page.dart';

class MyProject extends StatelessWidget {
  MyProject({super.key});

  List<dynamic> projectpreview = [
    'lib/Assets/profile.png',
    'lib/Assets/profile.png',
    'lib/Assets/profile.png',
    'lib/Assets/profile.png',
    'lib/Assets/profile.png',
    'lib/Assets/profile.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          const Center(
            child: Text(
              'MY PROJECTS PREVIEW',
              style: TextStyle(
                shadows: [
                  Shadow(
                      blurRadius: 8, color: Colors.black, offset: Offset(5, 6))
                ],
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.3,
              ),
            ),
          ),
          CarouselSlider.builder(
            itemCount: projectpreview.length,
            itemBuilder: (context, index, realIndex) => Center(
              child: Container(
                margin: const EdgeInsets.only(top: 32),
                height: Get.height * .6,
                width: Get.width * .7,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(26)),
                  image: DecorationImage(
                      image: AssetImage(projectpreview[index]),
                      fit: BoxFit.fill),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 35,
                      blurStyle: BlurStyle.inner,
                      offset: Offset(8, 9),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            options: CarouselOptions(
              height: 470,
              aspectRatio: 16 / 9,
              viewportFraction: 0.75,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Center(
            child: ElevatedButton(
                style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                onPressed:() => Get.to(const HomeScreen()),
                child: const Text(
                  "BACK TO HOME",
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
    );
  }
}
