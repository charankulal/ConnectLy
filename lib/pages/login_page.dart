// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers,
// ignore_for_file:unused_element, unused_field, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
// ignore_for_file: no_leading_underscores_for_local_identifiers, body_might_complete_normally_nullable
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  double _deviceHeight = 0;
  double _deviceWidth = 0;
  late GlobalKey<FormState> _formKey;

  _LoginPageState() {
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: _loginPageUI(),
      ),
    );
  }

  Widget _loginPageUI() {
    return Container(
      height: _deviceHeight * 0.60,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _headingWidget(),
          _inputForm(),
          _loginButton(),
          _registerButton(),
        ],
      ),
    );
  }

  Widget _headingWidget() {
    return Container(
      height: _deviceHeight * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome Back!",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
          ),
          Text(
            "Please login to your account.",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }

  Widget _inputForm() {
    return Container(
      height: _deviceHeight * 0.16,
      child: Form(
        key: _formKey,
        onChanged: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _emailTextField(),
            _passwordTextField(),
          ],
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return TextFormField(
      autocorrect: false,
      style: TextStyle(color: Colors.white),
      validator: (_input) {},
      onSaved: (_input) {},
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Email Address",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      autocorrect: false,
      obscureText: true,
      style: TextStyle(color: Colors.white),
      validator: (_input) {},
      onSaved: (_input) {},
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Password",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      height: _deviceHeight * 0.06,
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        color: Colors.blue,
        child: Text(
          "LOGIN",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _registerButton() {
    return GestureDetector(
      onTap: () {
        print("Heyy");
      },
      child: Container(
        height: _deviceHeight * 0.06,
        width: _deviceWidth,
        child: Text(
          "REGISTER",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white60),
        ),
      ),
    );
  }
}
