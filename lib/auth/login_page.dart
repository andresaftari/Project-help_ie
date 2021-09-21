import 'package:flutter/material.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initUsername = 'Username';

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(
      text: initUsername,
    );
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Editable Text'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(child: _editTitleTextField()),
        ),
      );

  Widget _editTitleTextField() {
    if (_isEditingText)
      return Center(
        child: TextField(
          onSubmitted: (values) {
            setState(() {
              initUsername = values;
              _isEditingText = false;
            });
          },
          autofocus: true,
          controller:  _editingController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() => {_isEditingText = true});
      },
      child: Text(
        initUsername,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
