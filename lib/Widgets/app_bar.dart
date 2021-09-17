import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

PreferredSizeWidget appBar(
  BuildContext context,
  String title, [
  Widget? action,
]) =>
    AppBar(
      leading: IconButton(
        icon: const Icon(Icons.keyboard_arrow_left),
        iconSize: 42,
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        title,
        style: textStyle.copyWith(
          fontSize: 20,
          letterSpacing: 0.8,
        ),
      ),
      actions: action == null
          ? null
          : [
              action,
            ],
    );
