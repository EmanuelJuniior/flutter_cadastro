import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: controllerEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Digite seu email',
                  ),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return 'Digite um Email Válido!!';
                    }
                    if (!email.contains('@')) {
                      return 'Digite um Email Válido!!';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controllerEmail.text = '';
                      }
                    },
                    child: const Text('Enviar'))
              ],
            )),
      ),
    );
  }
}
