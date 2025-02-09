import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/number_trivia_bloc.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({super.key});

  @override
  State<TriviaControls> createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose(); // Dispose of the controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onSubmitted: (_) => dispatchConcrete(),
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                onPressed: dispatchConcrete,
                child: const Text('Search'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: dispatchRandom,
                child: const Text('Get random trivia'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void dispatchConcrete() {
    final inputStr = controller.text.trim();
    if (inputStr.isNotEmpty) {
      controller.clear(); // Clear the input after submission
      BlocProvider.of<NumberTriviaBloc>(context)
          .add(NumberTriviaEvent.getNumberTriviaConcreteNumber(inputStr));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid number')),
      );
    }
  }

  void dispatchRandom() {
    controller.clear(); // Clear the input before fetching random trivia
    BlocProvider.of<NumberTriviaBloc>(context)
        .add(const NumberTriviaEvent.getNumberTriviaRandomNumber());
  }
}
