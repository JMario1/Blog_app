import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final toogleView;
  Register({this.toogleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Text(
                        "Register an account",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          validator: (value) =>
                              value.isEmpty ? 'Enter your Name' : null,
                          decoration: formDecoration.copyWith(
                              hintText: 'Enter First Name')),
                      SizedBox(height: 20.0),
                      TextFormField(
                          validator: (value) =>
                              value.isEmpty ? 'Enter your Name' : null,
                          decoration: formDecoration.copyWith(
                              hintText: 'Enter Last Name')),
                      SizedBox(height: 20.0),
                      TextFormField(
                          validator: (value) =>
                              value.isEmpty ? 'Enter a valid email' : null,
                          decoration: formDecoration.copyWith(
                              hintText: 'Enter email',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_off),
                                onPressed: () => null,
                              ))),
                      SizedBox(height: 20.0),
                      TextFormField(
                          validator: (value) => value.length < 6
                              ? 'password can\'t be less than 6 char'
                              : null,
                          decoration: formDecoration.copyWith(
                              hintText: 'Enter password')),
                      SizedBox(height: 20.0),
                      RaisedButton(
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 5.0),
                              borderRadius: BorderRadius.circular(16)),
                          color: Colors.blueAccent,
                          child: Text('Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              print("signedin");
                            }
                          }),
                      SizedBox(height: 30.0),
                      Divider(
                        color: Colors.black12,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account"),
                          FlatButton(
                              onPressed: () => widget.toogleView(),
                              child: Text(
                                "Sign In",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ))
                        ],
                      )
                    ],
                  )),
            ),
          )),
    );
  }
}

var formDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0),
        borderRadius: BorderRadius.circular(16)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
        borderRadius: BorderRadius.circular(16)),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
        borderRadius: BorderRadius.circular(16)));
