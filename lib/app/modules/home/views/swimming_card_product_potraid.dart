import 'package:flutter/material.dart';

class SwimmingCardProductPotraid extends StatelessWidget {
  const SwimmingCardProductPotraid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Swimming Pools in the area',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        // borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                          width: 140,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text('Bekasi - Indonesia'),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        // borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                          width: 130,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text('Bekasi - Indonesia'),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        // borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534009502677-4e5080efa8c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                          width: 130,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text('Bekasi - Indonesia'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
