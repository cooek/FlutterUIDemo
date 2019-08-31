import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FormDemo'),),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[RegisterForm()],
          ),
        ),
      ),
    );
  }
}

class ThemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[RegisterForm()],
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  _submitRegister() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username:$username');
      debugPrint('password:$password');
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Register...'))
      );

    }else{
      setState(() {
        autovalidate=true;
      });
    }
  }

  String _validateUsername(value) {
    if (value.isEmpty) {
      return 'UserName is not null.';
    }
    return null;
  }

  String _validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is not null.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            onSaved: (usnms) {
              username = usnms;
            },
            autocorrect: true,
            autovalidate: autovalidate,
            validator: _validateUsername,
            decoration: InputDecoration(helperText: '', labelText: 'UserName'),
          ),
          TextFormField(
            onSaved: (pswd) {
              password = pswd;
            },
            autovalidate: autovalidate,
            autocorrect: true,
            validator: _validatePassword,
            obscureText: true,
            decoration: InputDecoration(
              helperText: '',
              hintText: 'please is English luanger',
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Register', style: TextStyle(color: Colors.white)),
                elevation: 0.0,
                onPressed: () {
                  _submitRegister();
                }),
          )
        ],
      ),
    );
  }
}

class TextFeildDemo extends StatefulWidget {
  @override
  _TextFeildDemoState createState() => _TextFeildDemoState();
}

class _TextFeildDemoState extends State<TextFeildDemo> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'title',
          hintText: 'please is input id',
//        border: OutlineInputBorder()
//      border: InputBorder.none
          filled: true),
      onSubmitted: (value) {},
    );
  }

  @override
  void initState() {
    textEditingController.addListener(() {
      debugPrint("测试:" '${textEditingController.text}');
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
