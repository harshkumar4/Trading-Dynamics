import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

Widget tab({
  required String label,
  void Function()? onTap,
  required bool isActive,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: isActive ? white : primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          label,
          style: textStyle.copyWith(
            letterSpacing: 0.5,
            fontSize: 16,
            color: !isActive ? white : primaryColor,
          ),
        ),
      ),
    );
