import 'package:flutter/material.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:tesis_jesus/model/test.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key, required this.question, this.questionStyle})
      : super(key: key);

  final Question question;
  final TextStyle? questionStyle;

  @override
  Widget build(BuildContext context) {
    RadioGroupController myController = RadioGroupController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          question.question,
          style: questionStyle,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        RadioGroup(
          controller: myController,
          values: question.answers.map((e) => e.description).toList(),
          indexOfDefault: 0,
          orientation: RadioGroupOrientation.vertical,
          decoration: const RadioGroupDecoration(
            spacing: 10.0,
            labelStyle: TextStyle(),
          ),
        )
      ],
    );
  }
}
