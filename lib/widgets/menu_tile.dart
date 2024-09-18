import 'package:flutter/material.dart';
import 'package:ostello/models/menu_tile.dart';
import 'package:ostello/widgets/touchable_opacity.dart';

class MenuTile extends StatelessWidget {
  final MenuTileData data;
  const MenuTile({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Container(
        width: 90,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            width: .5,
            color: const Color(0xffFFF9E6),
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 6,
              color: Colors.black.withOpacity(.02),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              data.imagePath,
              height: 50,
            ),
            const SizedBox(height: 8),
            Text(
              data.title,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff555555),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
