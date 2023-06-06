import 'package:flutter/material.dart';
import 'package:presidio/Answers.dart';
import 'package:presidio/Question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  int score = 0;
  var question = [
    {
      'text': "1+1",
      'answers': ["1", "2", "3", "4", "5"],
      'ans': "2"
    },
    {
      'text': "2+2",
      'answers': ["1", "2", "3", "4", "5"],
      'ans': "4"
    },
    {
      'text': "3+1",
      'answers': ["1", "2", "3", "4", "5"],
      'ans': "4"
    },
    {
      'text': "1+4",
      'answers': ["1", "2", "3", "4", "5"],
      'ans': "5"
    },
    {
      'text': "5-1",
      'answers': ["1", "2", "3", "4", "5"],
      'ans': "4"
    },
  ];
  void incrementer(String value) {
    print(value);
    if (question[counter]["ans"] == value) {
      score++;
    }
    if (counter != question.length) {
      setState(() {
        counter++;
      });
    }
  }

  void back() {
    setState(() {
      counter = 0;
      score = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hello",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (counter <
                  5) // Display the Question and Answers only if counter is less than 5
                Column(
                  children: [
                    Question(question[counter]["text"].toString()),
                    ...(question[counter]['answers'] as List<String>)
                        .map((e) => Answer(e, incrementer)),
                  ],
                ),
              if (counter == question.length)
                Column(
                  children: [
                    Text("Your score is: $score"),
                    ElevatedButton(
                      onPressed: back,
                      child: Text('Restart'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
