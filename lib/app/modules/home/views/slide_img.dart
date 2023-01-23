import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideBannerSirenang extends StatelessWidget {
  const SlideBannerSirenang({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        // viewportFraction: 1.2,
        height: 300.0,
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 1.1,
        aspectRatio: 2.0,
        initialPage: 2,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 81, 80, 78)),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.network(
                        'https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                        width: 1000.00,
                        height: Get.height,
                        fit: BoxFit.cover,
                        // color: cBoxColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('HELLO SLIDER  $i',
                          style: const TextStyle(
                              letterSpacing: 1.1,
                              shadows: [
                                Shadow(
                                  blurRadius: 1.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 1.0),
                                )
                              ],
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}
