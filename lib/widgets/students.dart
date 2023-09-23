import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students({
    super.key,
  });

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  int selectedStudent = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            for (int i = 0; i < 4; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedStudent = i;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        selectedStudent == i
                            ? BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(4, 4),
                              )
                            : const BoxShadow(),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/p1.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            const Spacer(),
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffE7E6E6),
              ),
              child: const Center(
                child: Text(
                  "+12",
                  style: TextStyle(
                    color: Color(0xFF0E3C6E),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            for (int i = 0; i < selectedStudent; i++)
              Padding(
                padding: EdgeInsets.only(left: 50 + i * 18),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 9),
              child: Container(
                height: 21,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color(0xffE7E6E6),
                ),
                child: const Center(
                  child: Icon(
                    Icons.change_history,
                    color: Color(0xFF0E3C6E),
                    size: 21,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
