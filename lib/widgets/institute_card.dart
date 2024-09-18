import 'package:flutter/material.dart';
import 'package:ostello/widgets/break.dart';

class InstituteCard extends StatelessWidget {
  const InstituteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: const Color(0xffFFF2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "NEET Toppers of Rajbir Institute",
            style: TextStyle(
              color: Color(0xff0C0C0C),
              fontWeight: FontWeight.w600,
            ),
          ),
          Break.def,
          Row(
            children: [
              for (var i = 1; i <= 4; i++)
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image: AssetImage("assets/images/p$i.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Break(value: 4),
                    const Text(
                      "Shree",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Break(value: 4),
                    const Text(
                      "720/720",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff029C42),
                      ),
                    ),
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}
