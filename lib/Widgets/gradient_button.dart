import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/elevated_container.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required String label,
    Widget? icon,
    this.onTap,
    this.color = secondaryColor,
  })  : _label = label,
        _icon = icon,
        super(key: key);

  final String _label;
  final Widget? _icon;
  final VoidCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: elevatedContainer(
        Bgcolor: color,
        child: Container(
          height: 38,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            // gradient: const LinearGradient(
            //   colors: [
            //     bgGrey,
            //     primaryColor,
            //     navGrey,
            //   ],
            //   tileMode: TileMode.mirror,
            // ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (_icon != null) _icon!,
              if (_icon != null) const SizedBox(width: 8),
              Text(
                _label,
                style: textStyle.copyWith(
                  fontSize: 20,
                  letterSpacing: 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
