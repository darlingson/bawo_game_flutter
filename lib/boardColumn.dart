import 'package:flutter/material.dart';

class BoardColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.black,
            )),
      )
    ]);
  }
}
