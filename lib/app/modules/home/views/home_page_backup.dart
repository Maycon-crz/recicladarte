import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 200,
              color: Colors.purple[600],
              child: const Center(
                  child: Text(
                'Item 1',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
            ),
            Container(
              width: 200,
              color: Colors.purple[500],
              child: const Center(
                  child: Text(
                'Item 2',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
            ),
            Container(
              width: 200,
              color: Colors.purple[400],
              child: const Center(
                child: Text(
                  'Item 3',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 200,
              color: Colors.purple[300],
              child: const Center(
                  child: Text(
                'Item 4',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
