// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, unused_field, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  late double _deviceHeight;
  late double _deviceWidth;
  late GlobalKey<FormState> _formKey;

  _RegistrationPageState() {
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        alignment: Alignment.center,
        child: registrationPageUI(),
      ),
    );
  }

  Widget registrationPageUI() {
    return Container(
      height: _deviceHeight * 0.75,
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _headingWidget(),
          _inputForm(),
          _registerButton(),
          _backToLoginPageButton(),
        ],
      ),
    );
  }

  Widget _headingWidget() {
    return Container(
      height: _deviceHeight * 0.12,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Let's get going!",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
          ),
          Text(
            "Please Enter your details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }

  Widget _inputForm() {
    return Container(
      height: _deviceHeight * 0.35,
      child: Form(
        key: _formKey,
        onChanged: () {
          _formKey.currentState?.save();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _imageSelectorWidget(),
            _nameTextField(),
            _emailTextField(),
            _passwordTextField(),
          ],
        ),
      ),
    );
  }

  Widget _imageSelectorWidget() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: _deviceHeight * 0.10,
        width: _deviceWidth * 0.10,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(500),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://cdn0.iconfinder.com/data/icons/occupation-002-1/64/programmer-programming-occupation-avatar-512.png"),
          ),
        ),
      ),
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      autocorrect: false,
      style: TextStyle(color: Colors.white),
      validator: (_input) {
        return _input!.isNotEmpty ? null : "Please enter a name";
      },
      onSaved: (_input) {
        setState(() {});
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Name",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return TextFormField(
      autocorrect: false,
      style: TextStyle(color: Colors.white),
      validator: (_input) {
        return _input!.isNotEmpty && _input.contains("@")
            ? null
            : "Please enter a valid email";
      },
      onSaved: (_input) {
        setState(() {});
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Email",
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
      validator: (_input) {
        return _input!.isNotEmpty ? null : "Please enter a valid password";
      },
      onSaved: (_input) {
        setState(() {});
      },
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

  Widget _registerButton() {
    return Container(
      height: _deviceHeight * 0.06,
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        color: Colors.blue,
        child: Text(
          "REGISTER",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _backToLoginPageButton() {
    return GestureDetector(
      onTap: (){},
      child: Container(
      height: _deviceHeight * 0.06,
      width: _deviceWidth,
      child: Icon(
        Icons.arrow_back,
        size: 40,
      ),
    ),
    );
  }
}
