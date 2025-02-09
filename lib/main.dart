import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers_app_clean_architecture/presentation/bloc/number_trivia_bloc.dart';
import 'package:numbers_app_clean_architecture/presentation/pages/number_trivia_page.dart';

import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        hintColor: Colors.green.shade600,
      ),
      home: BlocProvider(
        create: (context) => sl<NumberTriviaBloc>(),
        child: const  NumberTriviaPage(),
      ),
    );
  }
}
