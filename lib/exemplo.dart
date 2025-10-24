
import 'package:flutter/material.dart';

class exemplo extends StatelessWidget {
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.ltr,
        children: [
          Text(
            'Hello World',
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Center(
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

}