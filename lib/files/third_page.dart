import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int res = 0;
  bool isPassword = true;
  Icon icon = Icon(Icons.visibility);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  final Uri url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              style: const TextStyle(fontSize: 20, color: Colors.red),
              decoration: const InputDecoration(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: phoneController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 20, color: Colors.red),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'cannot be empty';
                  } else if (value.length < 8) {
                    return 'must be 8 letters';
                  } else if (!value.isValidEmail()) {
                    return 'must enter a valid email';
                  }
                  return null;
                },
                obscuringCharacter: '#',
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(60)),
                  label: Text('Phone'),
                  labelStyle: TextStyle(color: Colors.amber),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print('success');
                  }
                },
                child: Text('submit')),
            SizedBox(
              height: 100,
            ),
            Text('Hello'),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime(2025, 3, 6),
                      firstDate: DateTime(2025, 3, 5),
                      lastDate: DateTime(2026));
                },
                child: Text('show date')),
            ElevatedButton(
                onPressed: () {
                 launchUrl(url);
                },
                child: Text('show time')),
          ],
        ),
      ),
    );
  }
  Future<void> launchUrl(Uri url) async {
    await launchUrl(url);

  }

}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
