import 'package:flutter/material.dart';

class SportCategory extends StatelessWidget {
  const SportCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text('Sport Category',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 280,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBA9-3gshYFwDoSerwZ-DTl5mUA0qIbP8sL9afe26eHLocJjKYcNI7-mmwnhuQ6hE-TGE&usqp=CAU',
                          width: 35,
                          height: 35,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Nama Icon",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
