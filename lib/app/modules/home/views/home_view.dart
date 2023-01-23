import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: const Color(0xffE2E8FE),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Sirenang',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.w500)),
          centerTitle: false,
          leading: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 137, 137, 137),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 137, 137, 137),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 137, 137, 137),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Color.fromARGB(255, 137, 137, 137),
                )),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndexBottomNavigationBar,
            children: [
              Center(
                child: Column(
                  children: [
                    CarouselSlider(
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 81, 80, 78)),
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
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              'Sport Category',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 300,
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                shrinkWrap: true,
                                itemCount: 12,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: 70,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                    )
                  ],
                ),
              ),
              const Center(child: Text('SAVED 2')),
              const Center(child: Text('SWIM 3')),
              const Center(child: Text('INBOX 4')),
              const Center(child: Text('PROFILE 5')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndexBottomNavigationBar,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItems(
                iconBar: Icons.search, labelName: 'Explore'),
            _bottomNavigationBarItems(
                iconBar: Icons.favorite, labelName: 'Saved'),
            _bottomNavigationBarItems(iconBar: Icons.cable, labelName: 'Swim'),
            _bottomNavigationBarItems(
                iconBar: Icons.person, labelName: 'Inbox'),
            _bottomNavigationBarItems(
                iconBar: Icons.home, labelName: 'Profile'),
          ],
        ),
      ),
    );
  }
}

_bottomNavigationBarItems({IconData? iconBar, String? labelName}) {
  return BottomNavigationBarItem(
    icon: Icon(iconBar),
    label: labelName,
  );
}
