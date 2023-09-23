import 'package:assignment/screens/top_colleges.dart';
import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  final List<String> boxTexts = [
    'Top Colleges',
    'Top Schools',
    'Exams',
  ];
  final List<String> smallbox = [
    '+126 Colleges',
    '+106 Schools',
    '+16 Exams',
  ];
  final List<String> subtext = [
    'Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.',
    'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
    'Find end-to-end information about the exams that are happening in India',
  ];

  final List<String> boxImages = [
    'assets/body1.jpg',
    'assets/body2.jpg',
    'assets/body3.jpg',
  ];

  MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              debugPrint('Box $index tapped');
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TopCollegesPage(),
                  ),
                );
              }
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: index == 0 ? 40 : 10,
                bottom: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 158,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        boxImages[index],
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        top: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.center,
                              colors: [
                                Color(0xFF000000), // Black
                                Colors.transparent,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.35),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              boxTexts[index],
                              style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                // letterSpacing: 0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 200,
                              child: Text(
                                subtext[index],
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  // letterSpacing: 0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 73,
                          height: 28,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(15)),
                          ),
                          child: Center(
                            child: Text(
                              "  ${smallbox[index]}",
                              style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
