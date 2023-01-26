import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwimmingIntroScreen extends StatelessWidget {
  const SwimmingIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/3389538/pexels-photo-3389538.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Positioned(
                bottom: 100,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Get Started')),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
