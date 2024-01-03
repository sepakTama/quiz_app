import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        // only use child
        child: Column(
          children: summaryData.map((data) {
            return Row(children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      data['question'].toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['user_answer'].toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 186, 45, 211),
                      ),
                    ),
                    Text(
                      data['correct_answer'].toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 4, 50, 87),
                      ),
                    ),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
