import 'package:flutter/material.dart';

class RegisterNameScreen extends StatefulWidget {
  const RegisterNameScreen({ Key? key}) : super(key: key);

  @override
  _RegisterNameScreenState createState() => _RegisterNameScreenState();
}

class _RegisterNameScreenState extends State<RegisterNameScreen> {
  final _formKey = GlobalKey<FormState>();

  String? username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                heightFactor: 8,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextFormField(
                    onSaved: (String? value) { this.username = value; },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Quel est votre nom ?',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vous devez entrer un nom';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            print(this.username);
                          }
                        },
                        child: const Text('Valider'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
