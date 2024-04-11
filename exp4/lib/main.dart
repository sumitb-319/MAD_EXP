import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '03_SumitBarkade_Exp4',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  List<String> _checkboxValues = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('03_SumitBarkade_Exp4'),
      ),
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email ID'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value;
                },
              ),
              SizedBox(height: 20),
              CheckboxListTile(
                title: Text('FE'),
                value: _checkboxValues.contains('FE'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked != null) {
                      if (isChecked) {
                        _checkboxValues.add('FE');
                      } else {
                        _checkboxValues.remove('FE');
                      }
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('SE'),
                value: _checkboxValues.contains('SE'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked != null) {
                      if (isChecked) {
                        _checkboxValues.add('SE');
                      } else {
                        _checkboxValues.remove('SE');
                      }
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('TE'),
                value: _checkboxValues.contains('TE'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked != null) {
                      if (isChecked) {
                        _checkboxValues.add('TE');
                      } else {
                        _checkboxValues.remove('TE');
                      }
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('BE'),
                value: _checkboxValues.contains('BE'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked != null) {
                      if (isChecked) {
                        _checkboxValues.add('BE');
                      } else {
                        _checkboxValues.remove('BE');
                      }
                    }
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Name: $_name');
                    print('Email: $_email');
                    print('Checkbox values: $_checkboxValues');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
