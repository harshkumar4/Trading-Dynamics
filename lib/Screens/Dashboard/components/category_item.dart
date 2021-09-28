import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SizedBox(
          width: 56,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(height: 6),
              Center(
                child: Text(
                  label,
                  style: textStyle.copyWith(
                    fontSize: 11,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
