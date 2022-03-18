import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/core_controller.dart';

class CorePage extends GetView<CoreController> {
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      controller.onItemTapped(index, context);
    }

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Recicladarte ${controller.title}'),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            controller.tabList.elementAt(controller.pageIndex.value),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment(0.0, 1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  child: BottomNavigationBar(
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.white,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    backgroundColor: Colors.black,
                    currentIndex: controller.pageIndex.value,
                    onTap: _onItemTapped,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                        backgroundColor: Colors.green,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.architecture),
                        label: 'DIY',
                        backgroundColor: Colors.red,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.school),
                        label: 'Charges',
                        backgroundColor: Colors.orange,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.assignment),
                        label: 'Quiz',
                        backgroundColor: Colors.blue,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.apps),
                        label: 'Mais',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
