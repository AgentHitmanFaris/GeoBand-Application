import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class SRAScreen extends StatefulWidget {
  @override
  _SRAScreen createState() => _SRAScreen();
}

class _SRAScreen extends State<SRAScreen> {
  final _questions = const [
    {
      'questionText':
          'Q1. Were You In A Close Contact With A Person Infected With SARS-COV-2 (COVID-19) Without Protective Equipment Or Falling To carry out Protective Measures?',
      'answers': [
        {
          'text': 'Yes',
          'score': 2,
        },
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText':
          'Q2. Do You Live Or Have Stayed In An Apartment Or In Other Space With A Person Under A Medical Supervision / Isolation Measure Or Suspicion Of Covid-19??',
      'answers': [
        {
          'text': 'Yes',
          'score': 2,
        },
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText':
          ' Q3. Did You Deviate From The Recommendation Of Carrying Out Preventive Measures Of Wearing A Protective Mask And Maintaining Hand Hygiene While Being In Public Spaces?',
      'answers': [
        {
          'text': 'Yes',
          'score': 2,
        },
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Q4. Have You Been Tested For SARS-COV-2 (COVID-19)?',
      'answers': [
        {
          'text': 'Yes',
          'score': 2,
        },
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Q5. Do You Experience Any of Symptoms Below?\n'
          '1) Flu 2) Fever 3) Cough 4) Difficulty Breathing 5) Muscle Pain \n'
          '6) Loss Of Smell And Taste 7) Headache 8) Chills 9) Pink Eye - Conjuctivitis',
      'answers': [
        {
          'text': 'Yes',
          'score': 2,
        },
        {'text': 'No', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Self Risks Assessment'), backgroundColor: Colors.cyanAccent),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
