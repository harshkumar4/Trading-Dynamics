import 'package:flutter/material.dart';

import '/../Theme/theme.dart';

class SignalWidget extends StatelessWidget {
  const SignalWidget({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: black,
        border: Border.all(
          color: navGrey,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundColor: navGrey,
            radius: 22,
            backgroundImage: NetworkImage(
              url,
            ),
          ),
          Text(
            title,
            style: textStyle,
          ),
          Text(
            '+18.56%',
            style: textStyle.copyWith(
              color: green,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
