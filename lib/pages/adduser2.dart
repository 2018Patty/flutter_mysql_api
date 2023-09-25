import 'package:flutter/material.dart';

class AddUser2 extends StatefulWidget {
  const AddUser2({super.key});

  @override
  State<AddUser2> createState() => _AddUser2State();
}

class _AddUser2State extends State<AddUser2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullname = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text('Add User Form',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                controller: fullname,
                decoration: const InputDecoration(
                  labelText: 'Fullname',
                  hintText: 'Please input fullname',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter fullname';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                controller: user,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: 'Please input username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                controller: pwd,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Please input password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Cancel'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
