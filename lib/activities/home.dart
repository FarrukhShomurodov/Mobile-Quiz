import 'package:flutter/material.dart';
import 'package:quiz_test/component/subject.dart';
import 'questions.dart';


//List of questiins with answers
List<Map<String, dynamic>> mathQuiz = [
  {
    'question': 'What is the result of 5 multiplied by 7?',
    'options': ['12', '35', '42', '25'],
    'answer_index': 1,
  },
  {
    'question': 'If you add 8 and 12, what is the sum?',
    'options': ['20', '18', '10', '15'],
    'answer_index': 0,
  },
  {
    'question': 'What is the next number in the sequence: 2, 4, 6, 8, ___?',
    'options': ['9', '10', '12', '14'],
    'answer_index': 2,
  },
  {
    'question': 'If you divide 20 by 4, what is the result?',
    'options': ['2', '4', '5', '6'],
    'answer_index': 1,
  },
  {
    'question':
        'What is the area of a rectangle with a length of 8 units and a width of 6 units?',
    'options': [
      '48 square units',
      '14 square units',
      '24 square units',
      '30 square units'
    ],
    'answer_index': 0,
  },
  {
    'question': 'How many sides does a triangle have?',
    'options': ['2', '3', '4', '5'],
    'answer_index': 1,
  },
  {
    'question': 'If you subtract 15 from 30, what is the result?',
    'options': ['5', '10', '15', '20'],
    'answer_index': 2,
  },
  {
    'question': 'What is the value of π (pi) approximately equal to?',
    'options': ['3.14', '22/7', '2.718', '1.618'],
    'answer_index': 0,
  },
  {
    'question':
        'What is the perimeter of a square with a side length of 5 units?',
    'options': ['10 units', '15 units', '20 units', '25 units'],
    'answer_index': 2,
  },
  {
    'question':
        'If a car travels at a speed of 60 miles per hour, how far will it travel in 3 hours?',
    'options': ['30 miles', '90 miles', '120 miles', '180 miles'],
    'answer_index': 3,
  },
];

List<Map<String, dynamic>> historyQuiz = [
  {
    'question': 'Who was the first President of the United States?',
    'options': [
      'Thomas Jefferson',
      'George Washington',
      'John Adams',
      'Benjamin Franklin'
    ],
    'answer_index': 1,
  },
  {
    'question':
        'In which year did Christopher Columbus first arrive in the Americas?',
    'options': ['1492', '1620', '1776', '1812'],
    'answer_index': 0,
  },
  {
    'question': 'Which war is known as the "Great War"?',
    'options': [
      'World War II',
      'The American Civil War',
      'World War I',
      'The Korean War'
    ],
    'answer_index': 2,
  },
  {
    'question':
        'Who wrote the "Declaration of Independence" for the United States?',
    'options': [
      'Abraham Lincoln',
      'Thomas Jefferson',
      'John F. Kennedy',
      'George Washington'
    ],
    'answer_index': 1,
  },
  {
    'question': 'What event marked the beginning of World War I?',
    'options': [
      'The sinking of the Titanic',
      'The assassination of Archduke Franz Ferdinand',
      'The signing of the Treaty of Versailles',
      'The bombing of Hiroshima'
    ],
    'answer_index': 1,
  },
  {
    'question':
        'Which ancient civilization is known for building the pyramids?',
    'options': [
      'Greek civilization',
      'Roman civilization',
      'Egyptian civilization',
      'Mesopotamian civilization'
    ],
    'answer_index': 2,
  },
  {
    'question': 'Who is credited with inventing the telephone?',
    'options': [
      'Nikola Tesla',
      'Alexander Graham Bell',
      'Thomas Edison',
      'Albert Einstein'
    ],
    'answer_index': 1,
  },
  {
    'question': 'When did the Industrial Revolution begin?',
    'options': ['17th century', '18th century', '19th century', '20th century'],
    'answer_index': 2,
  },
  {
    'question':
        'Which famous explorer sailed around the world in the 16th century?',
    'options': [
      'Christopher Columbus',
      'Marco Polo',
      'Ferdinand Magellan',
      'James Cook'
    ],
    'answer_index': 2,
  },
  {
    'question':
        'What year did the United States declare independence from Britain?',
    'options': ['1763', '1776', '1789', '1801'],
    'answer_index': 1,
  },
];

const List<Map<String, dynamic>> uiUxQuiz = [
  {
    'question': 'What does UI stand for in UX design?',
    'options': [
      'User Information',
      'User Interface',
      'User Involvement',
      'User Integration'
    ],
    'answer_index': 1,
  },
  {
    'question': 'What is the main goal of UX design?',
    'options': [
      'Creating visually appealing websites',
      'Maximizing website traffic',
      'Improving user satisfaction and usability',
      'Increasing advertising revenue'
    ],
    'answer_index': 2,
  },
  {
    'question': 'Which of the following is NOT a common UX design principle?',
    'options': ['Consistency', 'Clarity', 'Complexity', 'Accessibility'],
    'answer_index': 2,
  },
  {
    'question': 'What is wireframing in UI/UX design?',
    'options': [
      'A type of programming language',
      'A method of creating 3D models',
      'A visual representation of a webpage layout',
      'A form of user testing'
    ],
    'answer_index': 2,
  },
  {
    'question': 'What does A/B testing involve in UI/UX design?',
    'options': [
      'Testing different color schemes',
      'Testing different typography',
      'Testing multiple design variations with users',
      'Testing website load times'
    ],
    'answer_index': 2,
  },
  {
    'question': 'What is the purpose of personas in UX design?',
    'options': [
      'Creating fictional characters for a website',
      'Identifying target users and their needs',
      'Designing unique user interfaces',
      'Conducting usability testing'
    ],
    'answer_index': 1,
  },
  {
    'question': 'What is the "fold" in web design?',
    'options': [
      'A type of page layout',
      'The imaginary line dividing the visible area of a webpage from the non-visible area',
      'A technique for creating gradients',
      'A way to add interactivity to websites'
    ],
    'answer_index': 1,
  },
  {
    'question': 'What is the purpose of a usability test in UX design?',
    'options': [
      'To assess the speed of a website',
      'To evaluate the visual aesthetics of a website',
      'To gather feedback from users about a website\'s usability',
      'To test the website on various browsers'
    ],
    'answer_index': 2,
  },
  {
    'question': 'What is the difference between UI and UX design?',
    'options': [
      'They are the same thing',
      'UI is about user experience while UX is about user interface',
      'UI is about visual design while UX is about functionality',
      'UX is about user experience while UI is about usability'
    ],
    'answer_index': 3,
  },
  {
    'question': 'What is a wireframe in UI/UX design?',
    'options': [
      'A prototype of a website',
      'A visual representation of a webpage layout',
      'A type of font',
      'A form of user testing'
    ],
    'answer_index': 1,
  },
];

int _selectedTabIndex =
    0; // Initialize with the default tab index (e.g., 0 for "History")

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0, // Set the initial selected tab index
      child: Scaffold(
        backgroundColor: const Color(0xFF27073F),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 56),
                      child: Text(
                        "Let's test your knowledge",
                        style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 23 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
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
                        // TabBar
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TabBar(
                              indicatorColor: Colors.amber,
                              onTap: (index) {
                                setState(() {
                                  _selectedTabIndex = index;
                                });
                              },
                              tabs: const [
                                // Navigaion Panel
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'History',
                                    style: TextStyle(
                                      color: Color(0xFF270840),
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Math',
                                    style: TextStyle(
                                      color: Color(0xFF270840),
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Computer',
                                    style: TextStyle(
                                      color: Color(0xFF270840),
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Expanded(child: Content()),
                            const Expanded(child: SizedBox()),
                            // Start Button
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF270840),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      128, 16, 128, 16),
                                  child: TextButton(
                                    child: const Text(
                                      'Start Quiz',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onPressed: () {
                                      List<Map<String, dynamic>> selectedQuiz;
                                      // Based on the selected tab index, assign the corresponding quiz data
                                      switch (_selectedTabIndex) {
                                        case 0:
                                          selectedQuiz = historyQuiz;
                                          break;
                                        case 1:
                                          selectedQuiz = mathQuiz;
                                          break;
                                        case 2:
                                          selectedQuiz = uiUxQuiz;
                                          break;
                                        default:
                                          selectedQuiz =
                                              historyQuiz; // Default to history quiz
                                      }
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return QuizScreen(
                                              quiz: selectedQuiz,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
