import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: const Color(0xfff8fafc),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Sirenang', style: Theme.of(context).textTheme.headline5),
          centerTitle: false,
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndexBottomNavigationBar,
            children: const [
              Center(child: Text('EXPLORE 1')),
              Center(child: Text('SAVED 2')),
              Center(child: Text('SWIM 3')),
              Center(child: Text('INBOX 4')),
              Center(child: Text('PROFILE 5')),
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
