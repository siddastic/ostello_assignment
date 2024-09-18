import 'package:flutter/material.dart';
import 'package:ostello/widgets/touchable_opacity.dart';

class ControlBar extends StatefulWidget {
  const ControlBar({super.key});

  @override
  State<ControlBar> createState() => _ControlBarState();
}

class _ControlBarState extends State<ControlBar> {
  bool isOnline = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF6EDFF),
        borderRadius: BorderRadius.circular(28),
      ),
      height: 45,
      child: Row(
        children: [
          Expanded(
            child: TouchableOpacity(
              onTap: () {
                setState(() {
                  isOnline = !isOnline;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: isOnline ? const Color(0xff2E3139) : null,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Online",
                  style: TextStyle(
                    color: isOnline ? Colors.white : const Color(0xff777777),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TouchableOpacity(
              onTap: () {
                setState(() {
                  isOnline = !isOnline;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: isOnline ? null : const Color(0xff2E3139),
                ),
                child: Text(
                  "Offline",
                  style: TextStyle(
                    color: isOnline ? const Color(0xff777777) : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
