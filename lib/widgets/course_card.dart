import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ostello/widgets/break.dart';

class CourseCard extends StatelessWidget {
  final String courseTitle;
  final bool revealAllContent;
  const CourseCard({
    super.key,
    required this.courseTitle,
    this.revealAllContent = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 8),
      width: 298,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 4),
            color: const Color(0xff777777).withOpacity(.15),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Mr Sampath",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4C4452),
                ),
              ),
              Image.asset("assets/images/check.png", height: 15),
            ],
          ),
          const Break(value: 3),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/student.jpeg",
                  fit: BoxFit.cover,
                  width: 260,
                  height: 146,
                ),
                Container(
                  width: 260,
                  height: 146,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.65, 1.0],
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(.67),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 7,
                  left: 7,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.5),
                      color: const Color(0xffFFFFFF).withOpacity(.7),
                    ),
                    child: const Text(
                      "Hinglish",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 9,
                  right: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 4,
                        height: 4,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffF70909),
                        ),
                      ),
                      const Break(value: 4, isHorizontal: true),
                      const Text(
                        "LIVE",
                        style: TextStyle(
                          color: Color(0xffFF4D4D),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
                    .animate(
                      onPlay: (controller) => controller.repeat(),
                    )
                    .fadeIn(duration: 1.seconds)
                    .then(
                      delay: 1.seconds,
                    )
                    .fadeOut(duration: 1.seconds),
              ],
            ),
          ),
          const Break(value: 8),
          Center(
            child: Text(
              courseTitle,
              style: const TextStyle(
                color: Color(0xff2A2E3B),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Break(value: 8),
          if (revealAllContent) ...[
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoChip(
                        imagePath: "assets/icons/pc.png",
                        label: "Full Syllabus"),
                    Break(value: 5),
                    InfoChip(
                        imagePath: "assets/icons/radio.png",
                        label: "Live + Recorded"),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoChip(
                        imagePath: "assets/icons/student.png",
                        label: "For NEET 2025 & 2026\nAspirant"),
                    Break(value: 5),
                    InfoChip(
                        imagePath: "assets/icons/calendar.png",
                        label: "Batch starts on 16th Aug"),
                  ],
                ),
              ],
            ),
          ],
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 39, vertical: 6),
                backgroundColor: const Color(0xff7774D5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
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
          ),
        ],
      ),
    );
  }
}

class InfoChip extends StatelessWidget {
  final String imagePath;
  final String label;
  const InfoChip({super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath, width: 15),
        const Break(value: 4, isHorizontal: true),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Color(0xff6F6675),
          ),
        ),
      ],
    );
  }
}
