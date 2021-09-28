import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_dynamic/Widgets/elevated_container.dart';
import '/../Theme/theme.dart';

class ApiBindingCardWidget extends StatelessWidget {
  const ApiBindingCardWidget({
    Key? key,
    required this.icon,
    required this.label,
    this.onTap,
    this.color = navGrey,
  }) : super(key: key);

  final Widget icon;
  final String label;
  final VoidCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return elevatedContainer(
      Bgcolor: color,
      child: Card(
        color: color,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 6,
                bottom: 6,
              ),
              child: Row(
                children: [
                  icon,
                  const SizedBox(width: 12),
                  Text(
                    label,
                    style: textStyle.copyWith(
                      fontSize: 18,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.normal,
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
      ),
    );
  }
}
