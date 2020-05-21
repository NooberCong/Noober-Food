import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';

class RecipeInstructions extends StatefulWidget {
  final RecipeInformation data;
  const RecipeInstructions({Key key, @required this.data}) : super(key: key);

  @override
  _RecipeInstructionsState createState() => _RecipeInstructionsState();
}

class _RecipeInstructionsState extends State<RecipeInstructions> {
  int _stepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return widget.data.instructions.isNotEmpty
        ? Theme(
            data: ThemeData(primaryColor: Colors.green),
            child: Stepper(
              physics: const BouncingScrollPhysics(),
              currentStep: _stepIndex,
              onStepCancel: () => _setStep(_stepIndex - 1),
              onStepTapped: (index) => _setStep(index),
              onStepContinue: () => _setStep(_stepIndex + 1),
              steps: widget.data.instructions
                  .map(
                    (entry) => Step(
                        title: Text(
                          "Step ${entry.number}",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                        content: Text(
                          entry.description,
                          style: const TextStyle(fontSize: 16),
                        ),
                        state: _stateFromStep(entry.number),
                        isActive: entry.number - 1 == _stepIndex),
                  )
                  .toList(),
            ),
          )
        : Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Sorry, no instructions were found for this recipe",
                  style: TextStyle(color: Theme.of(context).errorColor)),
            ),
          );
  }

  void _setStep(int step) {
    setState(() {
      _stepIndex = max(min(step, widget.data.instructions.length - 1), 0);
    });
  }

  StepState _stateFromStep(int number) {
    return number < _stepIndex + 1
        ? StepState.complete
        : number == _stepIndex + 1 ? StepState.indexed : StepState.disabled;
  }
}
