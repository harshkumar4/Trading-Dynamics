import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

class ToggleCount extends StatefulWidget {
  ToggleCount(
    this.value, {
    Key? key,
  }) : super(key: key);

  int value;

  @override
  _ToggleCountState createState() => _ToggleCountState();
}

class _ToggleCountState extends State<ToggleCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: primaryColor,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => setState(() {
              widget.value--;
            }),
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white,
            ),
            child: Text(
              widget.value.toString(),
              style: textStyle.copyWith(
                color: black,
                fontSize: 18,
              ),
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              widget.value++;
            }),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
