import 'package:flutter/material.dart';
import '/../Theme/theme.dart';

class ApiBindingWidget extends StatelessWidget {
  const ApiBindingWidget({
    Key? key,
    required this.iconUrl,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final String iconUrl;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: navGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Image.network(
                  iconUrl,
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                ),
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
          TextButton(
            onPressed: onTap,
            child: Text(
              'Line',
              style: textStyle.copyWith(
                color: Colors.yellowAccent,
                letterSpacing: 0.6,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
