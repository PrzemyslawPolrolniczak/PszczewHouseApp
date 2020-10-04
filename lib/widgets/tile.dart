import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 12,
              color: Colors.amber,
            ),
            Container(padding: EdgeInsets.all(16), child: Text('Test1')),
          ],
        ),
      ),
    );
  }
}
