import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalWidgets {
  static Widget xchedule({double height = 50}) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        SizedBox(
            height: height,
            child: Image.asset(
              'assets/images/x.png',
              fit: BoxFit.fitHeight,
            )),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: height),
            Text(
              'chedule',
              style: TextStyle(
                fontSize: height/2,
                color: Colors.white,
                shadows: const [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 10
                  )
                ]
              ),
            )
          ],
        )
      ],
    );
  }
}
