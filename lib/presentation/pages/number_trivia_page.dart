import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers_app_clean_architecture/presentation/widgets/loading_widget.dart';
import 'package:numbers_app_clean_architecture/presentation/widgets/message_display.dart';

import '../../injection_container.dart';
import '../bloc/number_trivia_bloc.dart';
import '../widgets/trivia_controls.dart';
import '../widgets/trivia_display.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: buildBody(context),
    );
  }
}

 buildBody(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          // Top half
          BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
            builder: (context, state) {
              return state.when(
                  (number, text) => const MessageDisplay(
                        message: 'Start searching!',
                      ),
                  loading: () => const LoadingWidget(),
                  success: (value) => TriviaDisplay(
                    numberTrivia: value,
                  ),
                  error: (message) =>
                      MessageDisplay(message: message.toString()));
            },
          ),
          const SizedBox(height: 20),
          // Bottom half
          const Column(
            children: <Widget>[
              // TextField
              SizedBox(height: 10),
              TriviaControls()
            ],
          )
        ],
      ),
    ),
  );
}


