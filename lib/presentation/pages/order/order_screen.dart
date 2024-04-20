import 'dart:math';

import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Your Orders',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            // stop scroll view from scrolling
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('Order - #${Random.secure().nextInt(100000000)}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('17 July 2021 12:00 PM, 2 items, \$40.00'),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.orange),
                          Text(
                            'Shipped',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Text(
            'Completed Orders',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            // stop scroll view from scrolling
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('Order - #${Random.secure().nextInt(100000000)}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('17 July 2021 12:00 PM, 2 items, \$40.00'),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          Text(
                            'Delivered',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
    // return const StepperDemo();
  }
}

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int _currentStep = 0;
  List<Step> steps = [
    const Step(
      title: Text(''),
      content: Text(''),
      isActive: true,
      state: StepState.indexed,
      label: Text('Step 1'),
    ),
    const Step(
      title: Text(''),
      content: Text(''),
      isActive: false,
      state: StepState.indexed,
      label: Text(''),
    ),
    const Step(
      title: Text(''),
      content: Text(''),
      state: StepState.indexed,
      isActive: false,
      label: Text(''),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stepper(
      controlsBuilder: (context, details) {
        return TextButton(
          onPressed: details.onStepContinue,
          child: const Text('Next'),
        );
      },
      currentStep: _currentStep,
      steps: steps,
      type: StepperType.horizontal,
      onStepTapped: (step) {
        setState(() {
          _currentStep = step;
        });
      },
      onStepContinue: () {
        setState(() {
          if (_currentStep < steps.length - 1) {
            _currentStep = _currentStep + 1;
            steps[_currentStep - 1] = Step(
              title: const Text(''),
              content: const Text(''),
              state: StepState.complete,
              isActive: true,
              label: Text('Step $_currentStep'),
            );
            steps[_currentStep] = Step(
              title: const Text(''),
              content: const Text(''),
              state: StepState.indexed,
              isActive: true,
              label: Text('Step ${_currentStep + 1}'),
            );
          } else {
            _currentStep = 0;
          }
        });
      },
      onStepCancel: () {
        setState(() {
          if (_currentStep > 0) {
            _currentStep = _currentStep - 1;
          } else {
            _currentStep = 0;
          }
        });
      },
    );
  }
}
