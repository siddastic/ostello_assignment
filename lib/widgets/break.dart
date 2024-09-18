import 'package:flutter/material.dart';

class Break extends StatelessWidget {
  final double value;
  final bool isHorizontal;
  const Break({
    super.key,
    required this.value,
    this.isHorizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isHorizontal) {
      return SizedBox(width: value);
    }
    return SizedBox(height: value);
  }

  static Widget get def {
    return const Break(value: 10);
  }

  static Widget get horizontal {
    return const Break(value: 10, isHorizontal: true);
  }
}
