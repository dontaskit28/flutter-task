import 'package:assignment/widgets/review.dart';
import 'package:assignment/widgets/students.dart';
import 'package:flutter/material.dart';

class AboutCollegeView extends StatefulWidget {
  const AboutCollegeView({super.key});

  @override
  State<AboutCollegeView> createState() => _AboutCollegeViewState();
}

class _AboutCollegeViewState extends State<AboutCollegeView> {
  int selectedStudent = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E8E8E),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "Location",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 184,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/map.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "Student Review",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Students(),
            const SizedBox(
              height: 10,
            ),
            const ReviewBox()
          ],
        ),
      ),
    );
  }
}
