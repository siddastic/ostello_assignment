import 'package:flutter/material.dart';
import 'package:ostello/widgets/touchable_opacity.dart';

class SectionHeader extends StatelessWidget {
  final String label;
  final bool longContent;
  const SectionHeader({
    super.key,
    required this.label,
    this.longContent = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.5, right: 16, bottom: 8),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff272A34),
            ),
          ),
          const Spacer(),
          // underlined view all text
          if (longContent)
            const TouchableOpacity(
              child: Text(
                'View All',
                style: TextStyle(
                  color: Color(0xffEB5757),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffEB5757),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
