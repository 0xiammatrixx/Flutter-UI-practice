import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('Error');
    }
  }

  submitForm() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter First Name'),
                key: const ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First Name is Required';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstname = value.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Last Name'),
                key: const ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Last Name is Required';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  lastname = value.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Email',
                ),
                key: const ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Email is Required';
                  } else if (value.toString().contains('@')) {
                    return null;
                  } else {
                    return 'Email is not in the right format';
                  }
                },
                onSaved: (value) {
                  email = value.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Password'),
                key: const ValueKey('password'),
                validator: (value) {
                  if (value.toString().length <= 5) {
                    return 'Password should exceed 5 Characters';
                  } else if (value.toString().length >= 33) {
                    return 'Password should not exceed 32 Characters';
                  } else {
                    return null;
                  }
                },
                obscureText: true,
                obscuringCharacter: 'a',
                onSaved: (value) {
                  password = value.toString();
                },
              ),
              TextButton(
                  onPressed: () {
                    trySubmit();
                  },
                  child: const Text('Submit Form'))
            ],
          ),
        ),
      ),
    );
  }
}
