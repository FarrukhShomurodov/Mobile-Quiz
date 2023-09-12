import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27073F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Column(
          children: [
            Text("Details Quiz"),
            Text(
              'GET 100 points',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        //decoration
                        Container(
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x19333333),
                                  blurRadius: 54,
                                  offset: Offset(10, 24),
                                  spreadRadius: 0,
                                ),
                              ]),
                        ),
                        //content
                        Container(
                            margin: const EdgeInsets.only(top: 44, left: 24),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Brief explanation about this quiz",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat'),
                                ),
                                // 10 Questions
                                const Padding(
                                    padding: EdgeInsets.only(top: 24)),
                                Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFF333333),
                                        shape: OvalBorder(),
                                      ),
                                      child: const Icon(
                                        Icons.list,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 16)),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 Questions',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Montserrat"),
                                        ),
                                        Text(
                                          '10 point for a correct answer',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 14,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Time spand
                                const Padding(
                                    padding: EdgeInsets.only(top: 24)),
                                Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFF333333),
                                        shape: OvalBorder(),
                                      ),
                                      child: const Icon(
                                        Icons.timer,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 16)),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '2m 30s',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Montserrat"),
                                        ),
                                        Text(
                                          'Total duration of the quiz',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 14,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Stars
                                const Padding(
                                    padding: EdgeInsets.only(top: 24)),
                                Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFF333333),
                                        shape: OvalBorder(),
                                      ),
                                      child: const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 16)),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Win 10 star',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Montserrat"),
                                        ),
                                        Text(
                                          'Answer all questions correctly',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 14,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 24)),
                                // Rules
                                const Text(
                                  'Please read the text below carefully so you can\nunderstand it',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 16)),
                                const Row(
                                  children: [
                                    Text(
                                      "• ",
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '10 point awarded for a correct answer and no\nmarks for a incorrect answer',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 16)),
                                const Row(
                                  children: [
                                    Text(
                                      "• ",
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      'Tap on options to select the correct answer',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 16)),
                                const Row(
                                  children: [
                                    Text(
                                      "• ",
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      'Tap on the bookmark icon to save interesting questions',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 16)),
                                const Row(
                                  children: [
                                    Text(
                                      "• ",
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      'Click submit if you want to complete quizzes',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
