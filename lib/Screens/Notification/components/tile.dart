import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

Widget notificationTile({
  required IconData icon,
  required String title,
  required String subTitle,
  required String date,
}) =>
    SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(icon),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textStyle.copyWith(
                    fontSize: 16,
                    letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subTitle,
                  style: textStyle.copyWith(
                    color: subColor,
                  ),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Text(
                  date,
                  style: textStyle.copyWith(
                    color: navGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
