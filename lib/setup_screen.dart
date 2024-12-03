import 'package:flutter/material.dart';

class SetupScreen extends StatefulWidget {
  @override
  SetupScreenState createState() => SetupScreenState();
}

enum NumberOfQuestions {
  five('5', 5),
  ten('10', 10),
  fifteen('15', 10);

  const NumberOfQuestions(this.label, this.numQuestions);
  final String label;
  final int numQuestions;
}

enum Difficulty {
  any('Any Difficulty', ''),
  easy('Easy', 'easy'),
  medium('Medium', 'medium'),
  hard('Hard', 'hard');

  const Difficulty(this.label, this._difficulty);
  final String label;
  final String _difficulty;
}

enum Type {
  any('Any Type', ''),
  mc('Multiplce Choice', 'multiple'),
  tf('True / False', 'boolean');

  const Type(this.label, this._type);
  final String label;
  final String _type;
}

void _startQuiz(context){
  Navigator.of(context).pushReplacementNamed('/quiz');
}

class SetupScreenState extends State<SetupScreen> {
  NumberOfQuestions? selectedNumber;
  String? selectedDifficulty;
  String? selectedType;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownMenu<NumberOfQuestions>(
              initialSelection: NumberOfQuestions.ten,
              label: const Text('Number of Questions'),
              onSelected: (NumberOfQuestions? selected) {
                setState(() {
                  selectedNumber = selected;
                });
              },
              dropdownMenuEntries: NumberOfQuestions.values.map<DropdownMenuEntry<NumberOfQuestions>>(
                (NumberOfQuestions numQuestions) {
                  return DropdownMenuEntry<NumberOfQuestions>(
                    value: numQuestions, label: numQuestions.label
                  );
                }
              ).toList(),
            ),
            DropdownMenu<NumberOfQuestions>(
              initialSelection: NumberOfQuestions.ten,
              label: const Text('Number of Questions'),
              onSelected: (NumberOfQuestions? selected) {
                setState(() {
                  selectedNumber = selected;
                });
              },
              dropdownMenuEntries: NumberOfQuestions.values.map<DropdownMenuEntry<NumberOfQuestions>>(
                (NumberOfQuestions numQuestions) {
                  return DropdownMenuEntry<NumberOfQuestions>(
                    value: numQuestions, label: numQuestions.label
                  );
                }
              ).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Start Quiz!'),
        onPressed: () {_startQuiz(context);},
      ),
    );
  }
}