import 'package:flutter/material.dart';
import '/../Theme/theme.dart';

class ApiBindingCardWidget extends StatelessWidget {
  const ApiBindingCardWidget({
    Key? key,
    required this.icon,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final Widget icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              top: 12,
              bottom: 12,
            ),
            child: Row(
              children: [
                icon,
                const SizedBox(width: 8),
                Text(
                  label,
                  style: textStyle.copyWith(
                    fontSize: 18,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),
          ),
          // IconButton(
          //   onPressed: onTap,
          //   icon: const Icon(Icons.keyboard_arrow_right),
          //   iconSize: 32,
          //   color: white,
          // ),
        ],
      ),
    );
  }
}
