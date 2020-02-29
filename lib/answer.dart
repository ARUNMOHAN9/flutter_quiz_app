import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function trigger;
  final String label;
  final int score;

  Answer(this.label, this.trigger, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(label),
        onPressed: () => trigger(score),
      ),
    );
  }
}
