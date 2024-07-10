
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade800,

          title: const Text(
            'Flutter Stepper Sample',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary:
              Colors.blue.shade800, // Change the color of the step label
            ),
          ),
          child: Stepper(
            type: StepperType.horizontal,
            physics: const BouncingScrollPhysics(),
            currentStep: _currentStep,
            onStepCancel: () {
              setState(() {
                if (_currentStep > 0) {
                  _currentStep--;
                } else {
                  _currentStep = 2;
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (_currentStep != 2) {
                  _currentStep++;
                } else {
                  _currentStep = 0;
                }
              });
            },
            onStepTapped: (int newIndex) {
              setState(() {
                _currentStep = newIndex;
              });
            },
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              return Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Row(
                  children: [
                    if (_currentStep == 2)
                      FilledButton(
                        onPressed: details.onStepContinue,
                        child: const Text('Upload'),
                      )
                    else
                      FilledButton(
                        onPressed: details.onStepContinue,
                        child: const Text('Continue'),
                      ),
                    const SizedBox(width: 8),
                    if (_currentStep >= 0)
                      ElevatedButton(
                        onPressed: details.onStepCancel,
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),

                  ],
                ),
              );
            },
            steps: [
              Step(
                isActive: _currentStep == 0,
                title: const Text('Personal'),
                content: Column(
                  children: [
                    buildTextField(
                        'First Name', 1, firstNameCtrl, Icons.person),
                    const SizedBox(height: 15),
                    buildTextField('Last name', 1, lastNameCtrl, Icons.person),
                  ],
                ),
              ),
              Step(
                isActive: _currentStep == 1,
                title: const Text('Contect'),
                content: Column(
                  children: [
                    buildTextField('E-mail', 1, emailCtrl, Icons.email),
                    const SizedBox(height: 15),
                    buildTextField('Address', 3, addressCtrl, Icons.home),
                    const SizedBox(height: 15),
                    buildTextField('Mobile Number', 1, mobileCtrl, Icons.phone),
                  ],
                ),
              ),
              Step(
                isActive: _currentStep == 2,
                title: const Text('Upload'),
                content: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Name     : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '${firstNameCtrl.text} ${lastNameCtrl.text}',
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Address : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Expanded(
                            child: Text(
                              addressCtrl.text.toString(),
                              style: const TextStyle(fontSize: 18),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Mobile   : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          mobileCtrl.text.toString(),
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'E-mail    : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Expanded(
                            child: Container(
                                child: Text(
                                  emailCtrl.text.toString(),
                                  style: const TextStyle(fontSize: 18),
                                )))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField(String hintText, int maxLine,
      TextEditingController controller, var icon) {
    return TextField(
      maxLines: maxLine,
      cursorColor: Colors.blue.shade600,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black54,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          hintText: hintText),
    );
  }
}

TextEditingController emailCtrl = TextEditingController();
TextEditingController addressCtrl = TextEditingController();
TextEditingController mobileCtrl = TextEditingController();
TextEditingController firstNameCtrl = TextEditingController();
TextEditingController lastNameCtrl = TextEditingController();
int _currentStep = 0;
