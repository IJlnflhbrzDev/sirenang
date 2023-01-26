import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SwimmingCardProduct extends StatelessWidget {
  const SwimmingCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Swimming Pools in the area',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          const SizedBox(height: 20),
          SizedBox(
            height: Get.height,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //  Jarak antara element atas dan bawah
                  mainAxisSpacing: 20,
                  // jarak antara element kanan dan kiri
                  crossAxisSpacing: 10,
                  // tinggii dari element card
                  childAspectRatio: .9,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 253, 253, 253),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 213, 213, 213),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                            fit: BoxFit.cover,
                            width: Get.width,
                            height: 130,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'SMALL POOLS · 1 BEDS',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff996515)),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Happy Days',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Rp 200,000 - per hour',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 146, 146, 146)),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
