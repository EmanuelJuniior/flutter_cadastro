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
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Digite seu email',
                  ),
                )
              ],
            )),
      ),
    );
  }
}
