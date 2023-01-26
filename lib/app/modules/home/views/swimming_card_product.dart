import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SwimmingCardProduct extends StatelessWidget {
  const SwimmingCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: Get.height,
      color: Colors.white,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //  Jarak antara element atas dan bawah
            mainAxisSpacing: 20,
            // jarak antara element kanan dan kiri
            crossAxisSpacing: 5,
            // tinggii dari element card
            childAspectRatio: 1,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              color: const Color.fromARGB(255, 178, 172, 172),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1085&q=80',
                    fit: BoxFit.cover,
                    width: Get.width,
                  ),
                  const Text('Hello World'),
                  const Text('Hello World')
                ],
              ),
            );
          }),
    );
  }
}
