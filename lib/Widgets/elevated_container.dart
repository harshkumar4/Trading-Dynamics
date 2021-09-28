import 'package:flutter/cupertino.dart';
import 'package:trading_dynamic/Theme/theme.dart';

Widget elevatedContainer({
  required Widget child,
  required Color Bgcolor,
}) =>
    Container(
      child: child,
      clipBehavior: Clip.hardEdge,
      // padding: const EdgeInsets.symmetric(
      //   vertical: 4,
      //   horizontal: 4,
      // ),
      decoration: BoxDecoration(
        // color: primaryColor,
        color: Bgcolor,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: white,
            offset: Offset(-1, -1),
            blurRadius: 3,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: black,
            offset: Offset(1, 1),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
    );

// {'name':'some name','email':'as@kd.com','phone_number':'1234567890','referral_code':'someCO12'}

// {"name":"some name","email":"ask@kd.com","hone_number":"1234567890","referral_code":"someCO123"}