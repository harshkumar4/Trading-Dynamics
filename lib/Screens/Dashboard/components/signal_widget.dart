import 'package:flutter/material.dart';

import '/../Theme/theme.dart';

class SignalWidget extends StatelessWidget {
  const SignalWidget({
    Key? key,
    required this.url,
    required this.label,
  }) : super(key: key);

  final String url;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            url,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 2.0,
              right: 2,
            ),
            child: Text(
              label,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
