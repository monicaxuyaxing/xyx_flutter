import 'package:flutter/material.dart';


class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        //重新定义主题颜色，只覆盖之前定义的color
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black
        ),
        // child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegistForm(),
            ],
          ),
        ),

      ),
    );
  }
}

class RegistForm extends StatefulWidget {
  RegistForm({Key key}) : super(key: key);

  _RegistFormState createState() => _RegistFormState();
}

class _RegistFormState extends State<RegistForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void clickRegister() {
    if (registerFormKey.currentState.validate()) {
        registerFormKey.currentState.save();
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Restering...'),
          )
        );
    } else {
      setState(() {
        autovalidate = true;
      });
    }

    debugPrint('username: $username');
    debugPrint('password: $password');
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
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
            decoration: InputDecoration(labelText: 'Username',helperText: ''),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password',helperText: ''),
            onSaved: (value) {
              password = value;  
            },
            validator: validatePassword,
            autovalidate: autovalidate,

          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Submit',style: TextStyle(color: Colors.white)),
              elevation: 0,
              onPressed: () {
                clickRegister();
              },
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  // TextFieldDemo({Key key}) : super(key: key);
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEdController = TextEditingController();

  @override
  void dispose() {
    textEdController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEdController.addListener(
      () {
        debugPrint('inputeStr = ${textEdController.text}');
      }
    );    
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEdController,
      // onChanged: (value) {
      //   debugPrint('$value');
      // },
      onSubmitted: (value1) {
        debugPrint('submit:$value1');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the title',
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
    
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}