import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final toogleView;
  SignIn({this.toogleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text('Sign In'),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () => widget.toogleView(),
                icon: Icon(Icons.person),
                label: Text('Register'))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) =>
                          value.isEmpty ? 'Enter a valid email' : null,
                      decoration:
                          formDecoration.copyWith(hintText: 'Enter email')),
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) => value.length < 6
                          ? 'password can\'t be less than 6 char'
                          : null,
                      decoration:
                          formDecoration.copyWith(hintText: 'Enter password')),
                  SizedBox(height: 20.0),
                  RaisedButton(
                      color: Colors.pink,
                      child:
                          Text('Submit', style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          print("signedin");
                        }
                      }),
                  SizedBox(height: 20.0),
                ],
              )),
        ));
  }
}

const formDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 5.0)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 5.0)),
);
