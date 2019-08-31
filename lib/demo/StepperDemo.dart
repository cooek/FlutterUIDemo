import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StepperDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.black),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (value){
                  setState(() {
                    _currentStep =value;
                  });
                },
                onStepContinue: (){
                  setState(() {
                    _currentStep<2?_currentStep+=1:_currentStep=0;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentStep>0?_currentStep-=1:_currentStep=0;
                  });
                },
                steps: [
                  Step(
                      title: Text('Login'),
                      subtitle: Text('Login first'),
                      isActive: _currentStep ==0,
                      content: Text(
                          'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. ')),
                  Step(
                      title: Text('Choose Please Plan'),
                      subtitle: Text('Choose Plan'),
                      content: Text(
                          'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. '),
                      isActive: _currentStep==1),
                  Step(
                    title: Text('Confirm Paymnet'),
                    subtitle: Text('Confirm your palne'),
                    content: Text(
                        'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum.'),
                    isActive: _currentStep==2,
                  )
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
