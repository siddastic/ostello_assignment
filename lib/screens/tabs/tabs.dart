import 'package:flutter/material.dart';
import 'package:ostello/screens/tabs/home.dart';
import 'package:ostello/widgets/touchable_opacity.dart';

class TabScreen extends StatefulWidget {
  static const String routeName = "/tabs";
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _idx = 0;
  final List<Map<String, dynamic>> tabs = [
    {
      "screen": const HomeTab(),
      "label": "Home",
      "activeIcon": "assets/icons/home_active.png",
      "inactiveIcon": "assets/icons/home.png",
    },
    {
      "screen": null,
      "label": "Batches",
      "activeIcon": "assets/icons/teacher_active.png",
      "inactiveIcon": "assets/icons/teacher.png",
    },
    {
      "screen": null,
      "label": "Chat",
      "activeIcon": "assets/icons/message_active.png",
      "inactiveIcon": "assets/icons/message.png",
    },
    {
      "screen": null,
      "label": "Profile",
      "activeIcon": "assets/icons/profile-circle_active.png",
      "inactiveIcon": "assets/icons/profile-circle.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_idx]["screen"] ??
          Center(
            child: Text("${tabs[_idx]["label"]} Tab"),
          ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff4C4C4C).withOpacity(.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, -6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < tabs.length; i++)
              TouchableOpacity(
                onTap: () => setState(() => _idx = i),
                child: NavigationBarItem(
                  label: tabs[i]["label"],
                  imagePath: _idx == i
                      ? tabs[i]["activeIcon"]
                      : tabs[i]["inactiveIcon"],
                  isActive: _idx == i,
                ),
              )
          ],
        ),
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool isActive;
  const NavigationBarItem({
    super.key,
    required this.label,
    required this.imagePath,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: isActive ? const Color(0xffF6EDFF) : null,
              shape: BoxShape.circle,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: isActive
                  ? Theme.of(context).primaryColor
                  : const Color(0xff7c7c7c),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
