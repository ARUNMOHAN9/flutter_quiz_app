import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';


void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFirstAppState();
  }
}

class MyFirstAppState extends State<MyFirstApp> {
  int _index = 0;
  int _score = 0;

  final ques = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  void buttonPressed(score) {
    _score += score;
    setState(() {
        _index = ++ _index;
      });
  }

  Widget build(BuildContext context) {
    // return MaterialApp(home: Text('Hello World'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // body: Text('Dummy text'),
        body: _index < ques.length ? Quiz(ques[_index], buttonPressed) : Result(_score),
      ),
    );
  }
}

// class MyFirstApp extends StatelessWidget {
//   void buttonPressed() {
//     print("button pressed");
//   }

//   Widget build(BuildContext context) {
//     // return MaterialApp(home: Text('Hello World'));
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         // body: Text('Dummy text'),
//         body: Column(
//           children: <Widget>[
//             Text('Question 1'),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: buttonPressed,
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: buttonPressed,
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: buttonPressed,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
