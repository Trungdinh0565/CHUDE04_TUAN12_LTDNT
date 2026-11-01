import 'package:flutter/material.dart';

final isDark = ValueNotifier<bool>(false);
final textScale = ValueNotifier<double>(1.0);

class AppTheme {
  static const seed = Color(0xFF0B6E4F);
  static ThemeData build(Brightness brightness) {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: seed, brightness: brightness),
      platform: TargetPlatform.android, 
    );
    
    return base.copyWith(
      textTheme: base.textTheme.copyWith(
        bodyMedium: base.textTheme.bodyMedium?.copyWith(height: 1.5),
      ),
    );
  }
}