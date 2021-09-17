import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

class ToggleCount extends StatelessWidget {
  const ToggleCount({
    Key? key,
    required this.value,
    required this.incFunc,
    required this.decFunc,
  }) : super(key: key);

  final VoidCallback incFunc;
  final VoidCallback decFunc;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: decFunc,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white,
            ),
            child: Text(
              value,
              style: textStyle.copyWith(
                color: black,
                fontSize: 18,
              ),
            ),
          ),
          InkWell(
            onTap: incFunc,
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

// class ToggleCount extends StatefulWidget {
//   ToggleCount(
//     this.value, {
//     Key? key,
//   }) : super(key: key);

//   int value;

//   @override
//   _ToggleCountState createState() => _ToggleCountState();
// }

// class _ToggleCountState extends State<ToggleCount> {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
