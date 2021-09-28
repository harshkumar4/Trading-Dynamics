import 'package:flutter/material.dart';

ShaderMask gradientIcon(Widget icon) => ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          // white,
          Color(0xFF01f4ff),
          Color(0xFF4eadff),
        ],
      ).createShader(bounds),
      child: icon,
    );
