import 'package:flutter/material.dart';

class ReviewBox extends StatelessWidget {
  const ReviewBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff9E9E9E).withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 16,
            offset: const Offset(8, 8),
          ),
          BoxShadow(
            color: const Color(0xff9E9E9E).withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 16,
            offset: const Offset(-8, -8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Student Name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E8E8E),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // star rating
            Row(
              children: [
                for (int i = 0; i < 5; i++)
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  ),
                const Spacer(),
                const Text(
                  "4.3",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
