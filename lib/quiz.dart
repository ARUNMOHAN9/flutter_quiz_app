import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final que;

  final trigger;

  Quiz(this.que, this.trigger);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              que['questionText'],
            ),
            ...(que['answers'] as List<Map<String, Object>>).map((answer) {
              return Answer(
                answer['text'],
                trigger,
                answer['score']
              );
            }).toList()
          ],
        );
  }
}