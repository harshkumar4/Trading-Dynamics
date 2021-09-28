import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

void errorModal(BuildContext context, String text) => showModalBottomSheet(
      context: context,
      backgroundColor: navGrey,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6.0,
          horizontal: 8,
        ),
        child: Text(
          text,
          style: textStyle.copyWith(
            color: white,
            fontSize: 20,
          ),
        ),
      ),
    );
