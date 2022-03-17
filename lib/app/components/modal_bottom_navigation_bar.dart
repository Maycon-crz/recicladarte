import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/core_controller.dart';

class ModalBottomNavigation extends StatelessWidget {
  final controller = Get.put(CoreController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Text('Cursos'),
                    onPressed: () {
                      controller.onItemTapped(5, context);
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Text('Metal'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
            SizedBox(height: 9),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Text('Papel'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Text('Madeira'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
            SizedBox(height: 9),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Text('Plástico'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Text('Vidro'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
