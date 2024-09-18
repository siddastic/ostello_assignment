import 'package:flutter/material.dart';
import 'package:ostello/constants/data.dart';
import 'package:ostello/widgets/break.dart';
import 'package:ostello/widgets/control_bar.dart';
import 'package:ostello/widgets/course_card.dart';
import 'package:ostello/widgets/header_card.dart';
import 'package:ostello/widgets/institute_card.dart';
import 'package:ostello/widgets/menu_tile.dart';
import 'package:ostello/widgets/section_header.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Break.def,
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 23.5),
          leading: Hero(
            tag: 'user-img',
            child: Image.asset("assets/images/user.png"),
          ),
          title: Text.rich(
            TextSpan(
              text: "Hi, ",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff272A34),
              ),
              children: [
                TextSpan(
                  text: 'Krishna',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          subtitle: const Text(
            "Better yourself each day everyday",
            style: TextStyle(color: Color(0xff484848)),
          ),
          trailing: Image.asset("assets/icons/notification.png",
              width: 25, height: 25),
        ),
        Break.def,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.5, vertical: 8),
          child: ControlBar(),
        ),
        const Break(value: 16),
        const SingleChildScrollView(
          padding: EdgeInsets.only(left: 23.5),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HeaderCard(
                imagePath: "assets/images/boy_2.png",
                title: "Live Sections on JEE Exams",
                subtitle: "Live Sections on JEE Exams",
                backgroundColor: Color(0xffF7E2A5),
              ),
              Break(value: 16, isHorizontal: true),
              HeaderCard(
                imagePath: "assets/images/boy_1.png",
                title: "Free Courses",
                subtitle: "Live Sections on JEE\nExams",
                backgroundColor: Color(0xffFED1BA),
              ),
            ],
          ),
        ),
        const Break(value: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 23.5),
          child: Row(
            children: [
              for (var data in ConstantData.menuTiles) MenuTile(data: data),
            ],
          ),
        ),
        const Break(value: 25),
        const SectionHeader(label: "Toppers of ABC"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 23.5),
          child: Row(
            children: [for (var i = 0; i < 3; i++) const InstituteCard()],
          ),
        ),
        Break.def,
        const SectionHeader(label: "Popular Courses", longContent: true),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 23.5),
          child: Row(
            children: [
              for (var i = 0; i < 3; i++)
                const CourseCard(courseTitle: "Class 10th - Mathematics"),
            ],
          ),
        ),
        Break.def,
        const SectionHeader(label: "All Courses", longContent: true),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 23.5),
          child: Row(
            children: [
              for (var i = 0; i < 3; i++)
                const CourseCard(
                  courseTitle: "ARAMBH - NEET DROPPER BATCH",
                  revealAllContent: true,
                ),
            ],
          ),
        ),
        const Break(value: 40),
        Container(
          padding: const EdgeInsets.only(left: 25),
          decoration: const BoxDecoration(
            color: Color(0xffFFEDED),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Refer & Earn",
                    style: TextStyle(
                      color: Color(0xff4C4C4C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Cashback & Rewards",
                    style: TextStyle(
                      color: Color(0xff0C0C0C),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Break(value: 4),
                  const Text(
                    "Invite Your Friends & Get Up to\n₹500 After Registration",
                    style: TextStyle(
                      color: Color(0xff454545),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  Break.def,
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 39, vertical: 6),
                      backgroundColor: const Color(0xff272A34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      "Join",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                "assets/images/p2p.png",
                width: 180,
                height: 180,
              ),
            ],
          ),
        ),
        // add some empty space at the bottom
        const Break(value: 70),
      ],
    );
  }
}
