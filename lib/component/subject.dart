import 'package:flutter/material.dart';
import 'package:quiz_test/activities/about_game.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<int> getScore(String subject) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt(subject) ?? 0;
}

class Content extends StatelessWidget {
  const Content({super.key});
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Column(
          children: [
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
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(children: [
                    SizedBox(
                      width: 72,
                      height: 72,
                      child: Image.asset('assets/images/history.jpeg'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            TextButton(
                              child: const Text(
                                'History',
                                style: TextStyle(
                                  color: Color(0xFF270840),
                                  fontSize: 16,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const About()),
                                );
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.list,
                                    size: 17,
                                    color: Color(0xFF999999),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      '10 Question',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 17,
                                    color: Color(0xFF999999),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4,
                                    ),
                                    child: Text(
                                      '2m 30s        ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amber,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: FutureBuilder<int>(
                                future: getScore(
                                    'history'), // You're fetching the score here
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // While the score is loading, you can display a loading indicator
                                    return const CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    // If there's an error fetching the score, you can display an error message
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                    // When the score is available, display it
                                    return Text(
                                      '${snapshot.data}', // Display the score here
                                      style: const TextStyle(
                                        color: Color(0xFF270840),
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    );
                                  }
                                },
                              ))
                        ],
                      ),
                    )
                  ]),
                )),
          ],
        ),
        Column(
          children: [
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
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(children: [
                    SizedBox(
                        width: 72,
                        height: 72,
                        child: Image.asset('assets/images/math.png')),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            TextButton(
                              child: const Text(
                                '2 + 2 = ?         ',
                                style: TextStyle(
                                  color: Color(0xFF270840),
                                  fontSize: 16,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const About()),
                                );
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.list,
                                    size: 17,
                                    color: Color(0xFF999999),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      '10 Question',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 17,
                                    color: Color(0xFF999999),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4,
                                    ),
                                    child: Text(
                                      '2m 30s        ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          const Icon(Icons.star, size: 20, color: Colors.amber),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: FutureBuilder<int>(
                              future: getScore(
                                  'math'), // You're fetching the score here
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  // While the score is loading, you can display a loading indicator
                                  return const CircularProgressIndicator();
                                } else if (snapshot.hasError) {
                                  // If there's an error fetching the score, you can display an error message
                                  return Text('Error: ${snapshot.error}');
                                } else {
                                  // When the score is available, display it
                                  return Text(
                                    '${snapshot.data}', // Display the score here
                                    style: const TextStyle(
                                      color: Color(0xFF270840),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  );
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                )),
          ],
        ),
        Column(
          children: [
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
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(children: [
                    SizedBox(
                        width: 72,
                        height: 72,
                        child: Image.asset('assets/images/computer.jpeg')),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            TextButton(
                              child: const Text(
                                'UI UX Design',
                                style: TextStyle(
                                  color: Color(0xFF270840),
                                  fontSize: 16,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const About()),
                                );
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.list,
                                    size: 17,
                                    color: Color(0xFF999999),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      '10 Question',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 17,
                                    color: Color(0xFF999999),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4,
                                    ),
                                    child: Text(
                                      '2m 30s        ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          const Icon(Icons.star, size: 20, color: Colors.amber),
                          Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: FutureBuilder<int>(
                                future: getScore(
                                    'computer'), // You're fetching the score here
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // While the score is loading, you can display a loading indicator
                                    return const CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    // If there's an error fetching the score, you can display an error message
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                    // When the score is available, display it
                                    return Text(
                                      '${snapshot.data}', // Display the score here
                                      style: const TextStyle(
                                        color: Color(0xFF270840),
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    );
                                  }
                                },
                              ))
                        ],
                      ),
                    )
                  ]),
                )),
          ],
        )
      ],
    );
  }
}
