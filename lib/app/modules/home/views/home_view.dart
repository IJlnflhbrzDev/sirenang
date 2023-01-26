import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sirenang/app/modules/home/views/slide_img.dart';
import 'package:sirenang/app/modules/home/views/sport_category.dart';
import 'package:sirenang/app/modules/home/views/swimming_card_product_landscape.dart';

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
              SizedBox(
                height: Get.height,
                child: ListView(
                  children: const [
                    SlideBannerSirenang(),
                    SportCategory(),
                    SwimmingCardProduct(),
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
