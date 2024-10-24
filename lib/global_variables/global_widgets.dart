import 'package:flutter/material.dart';

/*
GlobalWidgets:
Class created to organize widgets used globally across the app
 */

class GlobalWidgets {
  //Icon Button with Circle
  static Widget iconCircle(
      {required IconData icon,
        void Function()? onTap,
      double radius = 15,
        double padding = 5,
      Color? color,
      Color? iconColor}) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: radius,
            backgroundColor: color,
          ),
          Icon(
            icon,
            size: radius*2-padding,
            color: iconColor,
          )
        ],
      ),
    );
  }

  //Xchedule logo
  static Widget xchedule({double height = 50}) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        //Gets the St. X logo from locally stored assets (see pubspec.yaml)
        SizedBox(
            height: height,
            child: Image.asset(
              'assets/images/x.png',
              fit: BoxFit.fitHeight,
            )),
        //...and slaps 'chedule' on the end!
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: height),
            Text(
              'chedule',
              style: TextStyle(
                  fontSize: height / 2,
                  color: Colors.white,
                  shadows: const [Shadow(color: Colors.black, blurRadius: 10)]),
            )
          ],
        )
      ],
    );
  }
}
